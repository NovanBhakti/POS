import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';

import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';

import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/order/order_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_quantity.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/dialog_payment.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/success_payment_dialog.dart';
import 'package:intl/intl.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';

import '../widgets/order_menu.dart';

class ConfirmPaymentPage extends StatefulWidget {
  const ConfirmPaymentPage({super.key});

  @override
  State<ConfirmPaymentPage> createState() => _ConfirmPaymentPageState();
}

class _ConfirmPaymentPageState extends State<ConfirmPaymentPage> {
  final MoneyMaskedTextController totalPriceController =
      MoneyMaskedTextController(
    initialValue: 0,
    thousandSeparator: '.',
    decimalSeparator: '',
    precision: 0,
    leftSymbol: 'Rp ',
  );

  @override
  void initState() {
    // searchResults = products;
    context.read<CheckoutBloc>();
    super.initState();
  }

  void onCategoryTap(int index) {
    totalPriceController.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('yyyyMMddHHmmss').format(DateTime.now());

    return SafeArea(
      child: Hero(
        tag: 'confirmation_screen',
        child: Scaffold(
          body: Row(
            children: [
              // LEFT CONTENT
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Konfirmasi',
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Orders #$formattedDate',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(16.0),
                                height: 60.0,
                                width: 60.0,
                                decoration: const BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SpaceHeight(8.0),
                        const Divider(),
                        const SpaceHeight(24.0),
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
                              width: 100.0,
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
                              loaded: (products, discount, tax, service) {
                                if (products.isEmpty) {
                                  return const Center(
                                    child: Text('No Items'),
                                  );
                                }
                                return ListView.separated(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    print('Panjang produk: ${products.length}');
                                    return OrderMenu(data: products[index]);
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SpaceHeight(16.0),
                                  itemCount: products.length,
                                );
                              },
                            );
                          },
                        ),
                        const SpaceHeight(16.0),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     ColumnButton(
                        //       label: 'Diskon',
                        //       svgGenImage: Assets.icons.diskon,
                        //       onPressed: () => showDialog(
                        //         context: context,
                        //         builder: (context) => const DiscountDialog(),
                        //       ),
                        //     ),
                        //     ColumnButton(
                        //       label: 'Pajak',
                        //       svgGenImage: Assets.icons.pajak,
                        //       onPressed: () => showDialog(
                        //         context: context,
                        //         builder: (context) => const TaxDialog(),
                        //       ),
                        //     ),
                        //     ColumnButton(
                        //       label: 'Layanan',
                        //       svgGenImage: Assets.icons.layanan,
                        //       onPressed: () => showDialog(
                        //         context: context,
                        //         builder: (context) => const ServiceDialog(),
                        //       ),
                        //     ),
                        //   ],
                        // ),
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
                                  loaded: (products, discount, tax, service) =>
                                      tax,
                                );
                                final price = state.maybeWhen(
                                  orElse: () => 0,
                                  loaded: (products, discount, tax, service) =>
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BlocBuilder<CheckoutBloc, CheckoutState>(
                              builder: (context, state) {
                                final discount = state.maybeWhen(
                                  orElse: () => 0,
                                  loaded:
                                      (products, discount, tax, serviceCharge) {
                                    if (discount == null) {
                                      return 0;
                                    }
                                    return int.parse(
                                        discount.value!.replaceAll('.00', ''));
                                  },
                                );

                                final subTotal = state.maybeWhen(
                                  orElse: () => 0,
                                  loaded: (products, discount, tax, service) =>
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

                                final finalDiscount = discount / 100 * subTotal;

                                return Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween, // Adds space between the elements
                                    children: [
                                      Text(
                                        'Diskon $discount %',
                                        style: const TextStyle(
                                          color: AppColors.grey,
                                        ),
                                      ),
                                      Text(
                                        finalDiscount.toInt().currencyFormatRp,
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

                        const SpaceHeight(20.0),
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
                                  loaded: (products, discount, tax, service) =>
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
                        // const SpaceHeight(20.0),
                        // Button.filled(
                        //   onPressed: () {},
                        //   label: 'Lanjutkan Pembayaran',
                        // ),
                      ],
                    ),
                  ),
                ),
              ),

              // RIGHT CONTENT
              Expanded(
                flex: 3,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Pembayaran',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Text(
                              '1 opsi pembayaran tersedia',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SpaceHeight(8.0),
                            const Divider(),
                            const SpaceHeight(8.0),
                            const Text(
                              'Metode Bayar',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SpaceHeight(12.0),
                            BlocBuilder<CheckoutBloc, CheckoutState>(
                              builder: (context, state) {
                                return Row(
                                  children: [
                                    Button.filled(
                                      width: 120.0,
                                      height: 50.0,
                                      onPressed: () {},
                                      label: 'Cash',
                                    ),
                                    const SpaceWidth(8.0),
                                    // Button.outlined(
                                    //   width: 120.0,
                                    //   height: 50.0,
                                    //   onPressed: () {},
                                    //   label: 'QRIS',
                                    //   disabled: true,
                                    // ),
                                  ],
                                );
                              },
                            ),
                            const SpaceHeight(8.0),
                            const Divider(),
                            const SpaceHeight(8.0),
                            const Text(
                              'Total Bayar',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SpaceHeight(12.0),
                            TextFormField(
                              controller: totalPriceController,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                hintText: 'Total harga',
                              ),
                            ),
                            const SpaceHeight(45.0),
                            Row(
                              children: [
                                Button.filled(
                                  width: 150.0,
                                  onPressed: () {},
                                  label: 'UANG PAS',
                                ),
                                const SpaceWidth(20.0),
                                Button.filled(
                                  width: 150.0,
                                  onPressed: () {},
                                  label: 'Rp 250.000',
                                ),
                                const SpaceWidth(20.0),
                                Button.filled(
                                  width: 150.0,
                                  onPressed: () {},
                                  label: 'Rp 300.000',
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
                                horizontal: 24.0, vertical: 16.0),
                            child: Row(
                              children: [
                                Flexible(
                                  child: Button.outlined(
                                    onPressed: () => context.pop(),
                                    label: 'Batalkan',
                                  ),
                                ),
                                const SpaceWidth(8.0),
                                BlocBuilder<CheckoutBloc, CheckoutState>(
                                  builder: (context, state) {
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
                                    final subTotal =
                                        price - (discount / 100 * price);
                                    final finalTax = subTotal * 0.11;
                                    final finalServiceCharge = subTotal * 0.05;
                                    final finalTotal =
                                        finalTax + finalServiceCharge;

                                    List<ProductQuantity> items =
                                        state.maybeWhen(
                                      orElse: () => [],
                                      loaded:
                                          (products, discount, tax, service) =>
                                              products,
                                    );
                                    return Flexible(
                                      child: Button.filled(
                                        onPressed: () async {
                                          bool confirmOrder = await showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                              title:
                                                  const Text('Confirm Order'),
                                              content: const Text(
                                                  'Are you sure you want to proceed with the order?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pop(false);
                                                  },
                                                  child: const Text('Cancel'),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pop(true);
                                                  },
                                                  child: const Text('Confirm'),
                                                ),
                                              ],
                                            ),
                                          );

                                          if (confirmOrder == true) {
                                            // ignore: use_build_context_synchronously
                                            context
                                                .read<OrderBloc>()
                                                .add(OrderEvent.order(
                                                  items,
                                                  discount,
                                                  finalTotal.toInt(),
                                                  0,
                                                  totalPriceController
                                                      .text.toIntegerFromText,
                                                ));
                                            await showDialog(
                                              // ignore: use_build_context_synchronously
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (context) =>
                                                  const SuccessPaymentDialog(),
                                            );
                                          }
                                        },
                                        label: 'Bayar',
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
