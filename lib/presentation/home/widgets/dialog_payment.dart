import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_posresto_app/core/components/components.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/order/order_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_quantity.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/success_payment_dialog.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/spaces.dart';

class dialogPayment extends StatefulWidget {
  const dialogPayment({super.key});

  @override
  State<dialogPayment> createState() => _dialogPaymentState();
}

class _dialogPaymentState extends State<dialogPayment> {
  late MoneyMaskedTextController totalPriceController;
  @override
  void initState() {
    super.initState();
    totalPriceController = MoneyMaskedTextController(
      initialValue: 0,
      thousandSeparator: '.',
      decimalSeparator: '',
      precision: 0,
      leftSymbol: 'Rp ',
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Assets.icons.success.svg()),
            const SpaceHeight(16.0),
            const Center(
              child: Text(
                'Are you sure want to proceed this payment?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SpaceHeight(20.0),
            Row(
              children: [
                Flexible(
                  child: Button.outlined(
                    onPressed: () {
                      context.pop();
                    },
                    label: 'Kembali',
                  ),
                ),
                const SpaceWidth(8.0),
                BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    final discount = state.maybeWhen(
                        orElse: () => 0,
                        loaded:
                            (products, drafts, discount, tax, serviceCharge) {
                          if (discount == null) {
                            return 0;
                          }
                          return discount.value!
                              .replaceAll('.00', '')
                              .toIntegerFromText;
                        });

                    final price = state.maybeWhen(
                      orElse: () => 0,
                      loaded: (products, drafts, discount, tax, service) =>
                          products.fold(
                        0,
                        (previousValue, element) =>
                            previousValue +
                            (element.product.price!.toIntegerFromText *
                                element.quantity),
                      ),
                    );
                    final subTotal = price - (discount / 100 * price);
                    final finalTax = subTotal * 0.11;

                    List<ProductQuantity> items = state.maybeWhen(
                      orElse: () => [],
                      loaded: (products, drafts, discount, tax, service) =>
                          products,
                    );
                    return Flexible(
                      child: Button.filled(
                        onPressed: () async {
                          context.read<OrderBloc>().add(OrderEvent.order(
                                items,
                                discount,
                                finalTax.toInt(),
                                0,
                                totalPriceController.text.toIntegerFromText,
                              ));
                          await showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context) => const SuccessPaymentDialog(),
                          );
                        },
                        label: 'Bayar',
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
