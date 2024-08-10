import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/data/datasources/order_remote_datasource.dart';
import 'package:flutter_posresto_app/data/datasources/product_local_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/product_response_models.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/local_product_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/dialog/discount_dialog.dart';
import 'package:flutter_posresto_app/presentation/home/dialog/tax_dialog.dart';
import 'package:flutter_posresto_app/presentation/home/models/order_model.dart';
import 'package:flutter_posresto_app/presentation/home/pages/confirm_payment_page.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/draft.dart';
import 'package:flutter_posresto_app/presentation/setting/bloc/sync_product/sync_product_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../dialog/service_dialog.dart';
import '../widgets/column_button.dart';
import '../widgets/custom_tab_bar.dart';
import '../widgets/order_menu.dart';
import '../widgets/product_card.dart';
import '../../../core/components/search_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  bool internetCheck = false;
  List dataHistoryOrders = [];
  final searchController = TextEditingController();
  final totalPriceController = MoneyMaskedTextController(
    initialValue: 0,
    thousandSeparator: '.',
    decimalSeparator: '',
    precision: 0,
    leftSymbol: 'Rp ',
  );

  late Future<void> refresh;
  @override
  void initState() {
    // searchResults = products;
    context
        .read<LocalProductBloc>()
        .add(const LocalProductEvent.getLocalProduct());
    refresh = _refresh();
    super.initState();
  }

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 2));
    _refreshLocalProducts();
    _syncProducts();
  }

  Future<void> _refreshLocalProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    context
        .read<LocalProductBloc>()
        .add(const LocalProductEvent.getLocalProduct());
  }

  Future<void> _syncProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    context.read<SyncProductBloc>().add(const SyncProductEvent.syncProduct());
  }

  Future<void> fetchData() async {
    try {
      final res = await OrderRemoteDatasource().getOrderHistory();
      setState(() {
        dataHistoryOrders = res['data'];
      });

      for (var data in dataHistoryOrders) {
        await ProductLocalDatasource.instance
            .saveOrder(OrderModel.fromMap(data));
      }
    } catch (e) {
      final res = await ProductLocalDatasource.instance.getOrdersDynamic();
      setState(() {
        dataHistoryOrders = res;
      });
      print(res.toString());
    }
  }

  void onCategoryTap(int index) {
    searchController.clear();
    // if (index == 0) {
    //   searchResults = products;
    // } else {
    //   searchResults = products
    //       .where((e) => e.category.index.toString().contains(index.toString()))
    //       .toList();
    // }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // if (products.isEmpty) {
    //   return const Center(
    //     child: CircularProgressIndicator(),
    //   );
    // }
    final formattedDate = DateFormat('yyMMddHHmmss').format(DateTime.now());
    return Hero(
      tag: 'homepage_screen',
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BlocConsumer<SyncProductBloc, SyncProductState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        error: (message) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(message),
                              backgroundColor: AppColors.red,
                            ),
                          );
                        },
                        loaded: (productResponseModels) {
                          ProductLocalDatasource.instance.deleteAllProducts();
                          ProductLocalDatasource.instance
                              .insertProducts(productResponseModels.data!);
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Sync Product Success'),
                                  backgroundColor: AppColors.green));
                        },
                      );
                    },
                    builder: (context, state) {
                      return RefreshIndicator.adaptive(
                        onRefresh: () {
                          setState(() {
                            refresh = _refresh();
                          });
                          return refresh;
                        },
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 200.0,
                                child: SearchInput(
                                  controller: searchController,
                                  onChanged: (value) {
                                    context.read<LocalProductBloc>().add(
                                          LocalProductEvent.searchLocalProduct(
                                              value),
                                        );
                                  },
                                  hintText: 'Search',
                                ),
                              ),
                              BlocBuilder<LocalProductBloc, LocalProductState>(
                                builder: (context, state) {
                                  final categoryNames = state.maybeWhen(
                                    orElse: () => [],
                                    loaded: (products) {
                                      final names = products
                                          .map((e) => e.category?.name)
                                          .where((name) => name != null)
                                          .toSet()
                                          .toList();
                                      return names;
                                    },
                                  );

                                  return CustomTabBar(
                                    tabTitles: ['All', ...categoryNames],
                                    initialTabIndex: 0,
                                    tabViews: List.generate(
                                      categoryNames.length + 1,
                                      (index) {
                                        if (index == 0) {
                                          return SizedBox(
                                            child: BlocBuilder<LocalProductBloc,
                                                LocalProductState>(
                                              builder: (context, state) {
                                                return state.maybeWhen(
                                                  orElse: () => const Center(
                                                      child:
                                                          CircularProgressIndicator()),
                                                  loading: () => const Center(
                                                      child:
                                                          CircularProgressIndicator()),
                                                  loaded: (products) {
                                                    List<Product>
                                                        filteredProducts;

                                                    if (index == 0) {
                                                      // All products
                                                      filteredProducts =
                                                          products;
                                                    } else {
                                                      // Products by category
                                                      final categoryName =
                                                          categoryNames[
                                                              index - 1];
                                                      filteredProducts = products
                                                          .where((product) =>
                                                              product.category
                                                                  ?.name ==
                                                              categoryName)
                                                          .toList();
                                                    }

                                                    if (filteredProducts
                                                        .isEmpty) {
                                                      return const Center(
                                                        child: _IsEmpty(),
                                                      );
                                                    }
                                                    return GridView.builder(
                                                      shrinkWrap: true,
                                                      itemCount:
                                                          products.length,
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      gridDelegate:
                                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                                        childAspectRatio: 0.85,
                                                        crossAxisCount: 3,
                                                        crossAxisSpacing: 30.0,
                                                        mainAxisSpacing: 30.0,
                                                      ),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              ProductCard(
                                                        data: products[index],
                                                        onCartButton: () {},
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          );
                                        } else {
                                          // View for specific category name
                                          final categoryName =
                                              categoryNames[index - 1];
                                          return SizedBox(
                                            child: BlocBuilder<LocalProductBloc,
                                                LocalProductState>(
                                              builder: (context, state) {
                                                return state.maybeWhen(
                                                  orElse: () => const Center(
                                                      child:
                                                          CircularProgressIndicator()),
                                                  loading: () => const Center(
                                                      child:
                                                          CircularProgressIndicator()),
                                                  loaded: (products) {
                                                    final categoryProducts =
                                                        products
                                                            .where((product) =>
                                                                product.category
                                                                    ?.name ==
                                                                categoryName)
                                                            .toList();
                                                    if (categoryProducts
                                                        .isEmpty) {
                                                      return const Center(
                                                          child: _IsEmpty());
                                                    }

                                                    return GridView.builder(
                                                      shrinkWrap: true,
                                                      itemCount:
                                                          categoryProducts
                                                              .length,
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      gridDelegate:
                                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                                        childAspectRatio: 0.85,
                                                        crossAxisCount: 3,
                                                        crossAxisSpacing: 30.0,
                                                        mainAxisSpacing: 30.0,
                                                      ),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              ProductCard(
                                                        data: categoryProducts[
                                                            index],
                                                        onCartButton: () {},
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Orders #$formattedDate',
                                style: const TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SpaceWidth(8.0),
                              BlocBuilder<LocalProductBloc, LocalProductState>(
                                builder: (context, state) {
                                  return BlocBuilder<CheckoutBloc,
                                      CheckoutState>(
                                    builder: (context, state) {
                                      final draft = state.maybeWhen(
                                        orElse: () => '0',
                                        loaded: (items, drafts, discount, tax,
                                                serviceCharge) =>
                                            drafts.length,
                                      );
                                      return Stack(
                                        children: [
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              minimumSize:
                                                  const Size(150.0, 40),
                                              padding: EdgeInsets.zero,
                                            ),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    const Draft(),
                                              );
                                            },
                                            child: const Text(
                                              'Draft',
                                              style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.primary,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 10,
                                            bottom: 12,
                                            child: GestureDetector(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      const Draft(),
                                                );
                                              },
                                              child: CircleAvatar(
                                                radius: 13.0,
                                                backgroundColor:
                                                    AppColors.primary,
                                                child: Text(
                                                  '$draft',
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),

                          const SpaceHeight(8.0),
                          // Row(
                          //   children: [
                          //     Button.filled(
                          //       width: 120.0,
                          //       height: 40,
                          //       onPressed: () {},
                          //       label: 'Dine In',
                          //     ),
                          //     const SpaceWidth(8.0),
                          //     Button.outlined(
                          //       width: 100.0,
                          //       height: 40,
                          //       onPressed: () {},
                          //       label: 'To Go',
                          //     ),
                          //   ],
                          // ),
                          const SpaceHeight(16.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Qty',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 70.0,
                                child: Text(
                                  'Product',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  'Price',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SpaceHeight(8),
                          const Divider(),
                          const SpaceHeight(8),
                          BlocBuilder<CheckoutBloc, CheckoutState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                orElse: () => const Center(
                                  child: Text('No Items'),
                                ),
                                loaded: (products, drafts, discount, tax,
                                    serviceCharge) {
                                  if (products.isEmpty) {
                                    return const Center(
                                      child: Text('No Items'),
                                    );
                                  }
                                  return ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                        OrderMenu(data: products[index]),
                                    separatorBuilder: (context, index) =>
                                        const SpaceHeight(0.5),
                                    itemCount: products.length,
                                  );
                                },
                              );
                            },
                          ),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ColumnButton(
                                label: 'Diskon',
                                svgGenImage: Assets.icons.diskon,
                                onPressed: () => showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (context) => const DiscountDialog(),
                                ),
                              ),
                              ColumnButton(
                                label: 'Pajak',
                                svgGenImage: Assets.icons.pajak,
                                onPressed: () => showDialog(
                                  context: context,
                                  builder: (context) => const TaxDialog(),
                                ),
                              ),
                              ColumnButton(
                                label: 'Layanan',
                                svgGenImage: Assets.icons.layanan,
                                onPressed: () => showDialog(
                                  context: context,
                                  builder: (context) => const ServiceDialog(),
                                ),
                              ),
                            ],
                          ),
                          const SpaceHeight(8.0),
                          const Divider(),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sub total',
                                style: TextStyle(color: AppColors.grey),
                              ),
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final price = state.maybeWhen(
                                      orElse: () => 0,
                                      loaded: (products, drafts, discount, tax,
                                          serviceCharge) {
                                        if (products.isEmpty) {
                                          return 0;
                                        }
                                        return products
                                            .map((e) =>
                                                e.product.price!
                                                    .toIntegerFromText *
                                                e.quantity)
                                            .reduce((value, element) =>
                                                value + element);
                                      });

                                  return Text(
                                    price.currencyFormatRp,
                                    style: const TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final price = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                            service) =>
                                        products.fold(
                                      0,
                                      (previousValue, element) =>
                                          previousValue +
                                          (element.product.price!
                                                  .toIntegerFromText *
                                              element.quantity),
                                    ),
                                  );

                                  final discount = state.maybeWhen(
                                      orElse: () => 0,
                                      loaded: (products, drafts, discount, tax,
                                          serviceCharge) {
                                        if (discount == null) {
                                          return 0;
                                        }
                                        return discount.value!
                                            .replaceAll('.00', '')
                                            .toIntegerFromText;
                                      });
                                  final discountType = state.maybeWhen(
                                    orElse: () => '',
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (discount == null) {
                                        return '';
                                      }
                                      return discount.type!;
                                    },
                                  );

                                  final taxName = state.maybeWhen(
                                    orElse: () => '',
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (tax == null) {
                                        return '';
                                      }
                                      return tax.name!;
                                    },
                                  );
                                  final taxValue = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (tax == null) {
                                        return 0;
                                      }
                                      return tax.value!
                                          .replaceAll('.00', '')
                                          .toIntegerFromText;
                                    },
                                  );

                                  final subTotalPercentage =
                                      price - (discount / 100 * price);
                                  final subTotalFixed = price - discount;
                                  final subTotal = price <= discount
                                      ? 0
                                      : discountType == 'percentage'
                                          ? subTotalPercentage
                                          : subTotalFixed;
                                  final finalTax = subTotal * taxValue / 100;

                                  return Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '$taxName ( $taxValue % )',
                                          style: const TextStyle(
                                            color: AppColors.grey,
                                          ),
                                        ),
                                        Text(
                                          '+ ${finalTax.toInt().currencyFormatRp}',
                                          style: const TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final discount = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (discount == null) {
                                        return 0;
                                      }
                                      return int.parse(discount.value!
                                          .replaceAll('.00', ''));
                                    },
                                  );

                                  final discountname = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (discount == null) {
                                        return 0;
                                      }
                                      return discount.name!;
                                    },
                                  );

                                  final discountType = state.maybeWhen(
                                    orElse: () => '',
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (discount == null) {
                                        return '';
                                      }
                                      return discount.type!;
                                    },
                                  );

                                  final subTotal = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                            service) =>
                                        products.fold(
                                      0,
                                      (previousValue, element) =>
                                          previousValue +
                                          (element.product.price!
                                                  .replaceAll('.00', ',00')
                                                  .toIntegerFromText *
                                              element.quantity),
                                    ),
                                  );

                                  final finalDiscountPercentage =
                                      discount / 100 * subTotal;
                                  final finalDiscount = subTotal <= discount
                                      ? 0
                                      : discountType == 'percentage'
                                          ? finalDiscountPercentage
                                          : discount;
                                  final finalDiscountName = subTotal <= discount
                                      ? 'Rp. 0'
                                      : (discountType == 'percentage'
                                          ? '$discount%'
                                          : 'Rp. -$discount');

                                  return Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '$discountname ( $finalDiscountName )',
                                          style: const TextStyle(
                                            color: AppColors.grey,
                                          ),
                                        ),
                                        Text(
                                          '- ${finalDiscount.toInt().currencyFormatRp}',
                                          style: const TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final price = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                            serviceCharge) =>
                                        products.fold(
                                      0,
                                      (previousValue, element) =>
                                          previousValue +
                                          (element.product.price!
                                                  .toIntegerFromText *
                                              element.quantity),
                                    ),
                                  );

                                  final discount = state.maybeWhen(
                                      orElse: () => 0,
                                      loaded: (products, drafts, discount, tax,
                                          serviceCharge) {
                                        if (discount == null) {
                                          return 0;
                                        }
                                        return discount.value!
                                            .replaceAll('.00', '')
                                            .toIntegerFromText;
                                      });

                                  final discountType = state.maybeWhen(
                                    orElse: () => '',
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (discount == null) {
                                        return '';
                                      }
                                      return discount.type!;
                                    },
                                  );

                                  final serviceChargeValue = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (serviceCharge == null) {
                                        return 0;
                                      }
                                      return serviceCharge.value!
                                          .replaceAll('.00', '')
                                          .toIntegerFromText;
                                    },
                                  );

                                  final serviceChargeName = state.maybeWhen(
                                    orElse: () => '',
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (serviceCharge == null) {
                                        return '';
                                      }
                                      return serviceCharge.name!;
                                    },
                                  );

                                  final subTotalPercentage =
                                      price - (discount / 100 * price);
                                  final subTotalFixed = price - discount;
                                  final subTotal = price <= discount
                                      ? 0
                                      : discountType == 'percentage'
                                          ? subTotalPercentage
                                          : subTotalFixed;
                                  final finalTax =
                                      subTotal * serviceChargeValue / 100;
                                  return Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          ' $serviceChargeName ( $serviceChargeValue % )',
                                          style: const TextStyle(
                                            color: AppColors.grey,
                                          ),
                                        ),
                                        Text(
                                          '+ ${finalTax.toInt().currencyFormatRp}',
                                          style: const TextStyle(
                                            color: AppColors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),

                          const SpaceHeight(8.0),
                          const Divider(),
                          const SpaceHeight(8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Total',
                                style: TextStyle(
                                    color: AppColors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final price = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                            service) =>
                                        products.fold(
                                      0,
                                      (previousValue, element) =>
                                          previousValue +
                                          (element.product.price!
                                                  .toIntegerFromText *
                                              element.quantity),
                                    ),
                                  );

                                  final discount = state.maybeWhen(
                                      orElse: () => 0,
                                      loaded: (products, drafts, discount, tax,
                                          serviceCharge) {
                                        if (discount == null) {
                                          return 0;
                                        }
                                        return discount.value!
                                            .replaceAll('.00', '')
                                            .toIntegerFromText;
                                      });

                                  final discountType = state.maybeWhen(
                                    orElse: () => '',
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (discount == null) {
                                        return '';
                                      }
                                      return discount.type!;
                                    },
                                  );
                                  final taxValue = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (tax == null) {
                                        return 0;
                                      }
                                      return tax.value!
                                          .replaceAll('.00', '')
                                          .toIntegerFromText;
                                    },
                                  );

                                  final serviceChargeValue = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                        serviceCharge) {
                                      if (serviceCharge == null) {
                                        return 0;
                                      }
                                      return serviceCharge.value!
                                          .replaceAll('.00', '')
                                          .toIntegerFromText;
                                    },
                                  );

                                  final subTotalPercentage =
                                      price - (discount / 100 * price);
                                  final subTotalFixed = price - discount;
                                  final subTotal = discountType == 'percentage'
                                      ? subTotalPercentage
                                      : subTotalFixed;
                                  final serviceCharge =
                                      subTotal * serviceChargeValue / 100;
                                  final tax = subTotal * taxValue / 100;
                                  final total = price <= discount
                                      ? price
                                      : subTotal + tax + serviceCharge;

                                  // final subTotal =
                                  //     price - (discount / 100 * price);
                                  // final tax = subTotal * 0.11;
                                  // final serviceCharge = subTotal * 0.05;
                                  // final total = subTotal + tax + serviceCharge;

                                  totalPriceController.text =
                                      total.ceil().toString();
                                  return Text(
                                    total.ceil().currencyFormatRp,
                                    style: const TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SpaceHeight(100.0),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ColoredBox(
                        color: AppColors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: Button.outlined(
                                      onPressed: () async {
                                        bool? confirmDelete = await showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title:
                                                  const Text('Confirm Delete'),
                                              content: const Text(
                                                  'Are you sure you want to delete this item?'),
                                              actions: <Widget>[
                                                TextButton(
                                                  child: const Text('Cancel'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop(
                                                        false); // Return false to indicate cancellation
                                                  },
                                                ),
                                                TextButton(
                                                  child: const Text('Delete'),
                                                  onPressed: () {
                                                    Navigator.of(context).pop(
                                                        true); // Return true to indicate confirmation
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                        if (confirmDelete == true) {
                                          context.read<CheckoutBloc>().add(
                                              const CheckoutEvent.started());
                                        }
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        color: AppColors.red,
                                      ),
                                      label: 'Delete',
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  Flexible(
                                    child: Button.outlined(
                                      onPressed: () {
                                        context.read<CheckoutBloc>().add(
                                            const CheckoutEvent.saveToDraft());

                                        // Show a SnackBar notification
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'Draft saved successfully!'),
                                            backgroundColor: AppColors.green,
                                          ),
                                        );
                                      },
                                      label: 'Add to Draft',
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              BlocBuilder<CheckoutBloc, CheckoutState>(
                                builder: (context, state) {
                                  final productCount = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, drafts, discount, tax,
                                            service) =>
                                        products.length,
                                  );
                                  return Flexible(
                                    child: Button.filled(
                                      onPressed: () {
                                        context
                                            .push(const ConfirmPaymentPage());
                                      },
                                      label: 'Lanjutkan Pembayaran',
                                      disabled: productCount == 0,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IsEmpty extends StatelessWidget {
  const _IsEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.noProduct.svg(),
          const SizedBox(height: 80.0),
          const Text(
            'No item allowed',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
