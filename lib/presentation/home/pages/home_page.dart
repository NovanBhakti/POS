import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/core/extensions/date_time_ext.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/data/datasources/product_local_datasource.dart';
import 'package:flutter_posresto_app/data/models/response/product_response_models.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/local_product_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/order/order_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/dialog/discount_dialog.dart';
import 'package:flutter_posresto_app/presentation/home/dialog/tax_dialog.dart';
import 'package:flutter_posresto_app/presentation/home/pages/confirm_payment_page.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/draft.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/save_draft.dart';
import 'package:flutter_posresto_app/presentation/setting/bloc/sync_order/sync_order_bloc.dart';
import 'package:flutter_posresto_app/presentation/setting/bloc/sync_product/sync_product_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../dialog/service_dialog.dart';
import '../models/product_category.dart';
import '../models/product_model.dart';
import '../widgets/column_button.dart';
import '../widgets/custom_tab_bar.dart';
import '../widgets/home_title.dart';
import '../widgets/order_menu.dart';
import '../widgets/product_card.dart';
import '../../../core/components/search_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final totalPriceController = MoneyMaskedTextController(
    initialValue: 0,
    thousandSeparator: '.',
    decimalSeparator: '',
    precision: 0,
    leftSymbol: 'Rp ',
  );

  @override
  void initState() {
    // searchResults = products;
    context
        .read<LocalProductBloc>()
        .add(const LocalProductEvent.getLocalProduct());
    super.initState();
  }

  Future<void> _refresh() async {
    await Future.delayed(const Duration(seconds: 1));
    context.read<SyncProductBloc>().add(const SyncProductEvent.syncProduct());
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

  void searchProducts(String query) {
    // Panggil metode Bloc untuk melakukan pencarian produk
  }

  @override
  Widget build(BuildContext context) {
    // if (products.isEmpty) {
    //   return const Center(
    //     child: CircularProgressIndicator(),
    //   );
    // }
    final formattedDate = DateFormat('yyyyMMddHHmmss').format(DateTime.now());
    return Hero(
      tag: 'confirmation_screen',
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
                        onRefresh: _refresh,
                        child: SingleChildScrollView(
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
                                    tabTitles: [
                                      'All',
                                      ...categoryNames // Gunakan nama kategori sebagai judul tab
                                    ],
                                    initialTabIndex: 0,
                                    tabViews: List.generate(
                                      categoryNames.length + 1,
                                      (index) {
                                        if (index == 0) {
                                          // View for 'All' category
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
                                                          child:
                                                              Text('No Items'));
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
                              Button.outlined(
                                width: 100.0,
                                height: 40,
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => const Draft(),
                                  );
                                },
                                label: 'Draft',
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
                                loaded:
                                    (products, discount, tax, serviceCharge) {
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
                                      loaded: (products, discount, tax,
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
                                  final tax = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded:
                                        (products, discount, tax, service) =>
                                            tax,
                                  );
                                  final price = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded:
                                        (products, discount, tax, service) =>
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
                                      loaded: (products, discount, tax,
                                          serviceCharge) {
                                        if (discount == null) {
                                          return 0;
                                        }
                                        return discount.value!
                                            .replaceAll('.00', '')
                                            .toIntegerFromText;
                                      });

                                  final subTotal =
                                      price - (discount / 100 * price);
                                  final finalTax = subTotal * 0.11;

                                  return Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween, // Adds space between the elements
                                      children: [
                                        Text(
                                          'PBB ( $tax % )',
                                          style: const TextStyle(
                                            color: AppColors.grey,
                                          ),
                                        ),
                                        Text(
                                          finalTax.toInt().currencyFormatRp,
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
                                    loaded: (products, discount, tax,
                                        serviceCharge) {
                                      if (discount == null) {
                                        return 0;
                                      }
                                      return int.parse(discount.value!
                                          .replaceAll('.00', ''));
                                    },
                                  );

                                  final subTotal = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded:
                                        (products, discount, tax, service) =>
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

                                  final finalDiscount =
                                      discount / 100 * subTotal;

                                  return Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Diskon $discount %',
                                          style: const TextStyle(
                                            color: AppColors.grey,
                                          ),
                                        ),
                                        Text(
                                          finalDiscount
                                              .toInt()
                                              .currencyFormatRp,
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
                                  final serviceCharge = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, discount, tax,
                                            serviceCharge) =>
                                        serviceCharge,
                                  );
                                  final price = state.maybeWhen(
                                    orElse: () => 0,
                                    loaded: (products, discount, tax,
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
                                      loaded: (products, discount, tax,
                                          serviceCharge) {
                                        if (discount == null) {
                                          return 0;
                                        }
                                        return discount.value!
                                            .replaceAll('.00', '')
                                            .toIntegerFromText;
                                      });

                                  final subTotal =
                                      price - (discount / 100 * price);
                                  final finalTax = subTotal * 0.05;
                                  return Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween, // Adds space between the elements
                                      children: [
                                        Text(
                                          'Service Charge ( $serviceCharge % )',
                                          style: const TextStyle(
                                            color: AppColors.grey,
                                          ),
                                        ),
                                        Text(
                                          finalTax.toInt().currencyFormatRp,
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
                                    loaded:
                                        (products, discount, tax, service) =>
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
                                      loaded: (products, discount, tax,
                                          serviceCharge) {
                                        if (discount == null) {
                                          return 0;
                                        }
                                        return discount.value!
                                            .replaceAll('.00', '')
                                            .toIntegerFromText;
                                      });

                                  final subTotal =
                                      price - (discount / 100 * price);
                                  final tax = subTotal * 0.11;
                                  final serviceCharge = subTotal * 0.05;
                                  final total = subTotal + tax + serviceCharge;

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
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.delete,
                                        color: AppColors.red,
                                      ), // Add the delete icon
                                      label: 'Delete',
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 10.0), // Horizontal spacing
                                  Flexible(
                                    child: Button.outlined(
                                      onPressed: () {},
                                      label: 'Save Draft',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0), // Vertical spacing
                              Flexible(
                                child: Button.filled(
                                  onPressed: () {
                                    context.push(const ConfirmPaymentPage());
                                  },
                                  label: 'Lanjutkan Pembayaran',
                                ),
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
