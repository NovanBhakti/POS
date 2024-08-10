import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/components.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/data/datasources/send_email_datasource.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/order/order_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_quantity.dart';

class sendEmail extends StatefulWidget {
  const sendEmail({Key? key}) : super(key: key);

  @override
  State<sendEmail> createState() => _sendEmailState();
}

final emailController = TextEditingController();
final totalPriceController = TextEditingController();

class _sendEmailState extends State<sendEmail> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SpaceHeight(16.0),
              const Center(
                child: Text(
                  'Input Your Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SpaceHeight(20.0),
              CustomTextField(
                controller: emailController,
                label: 'Email',
              ),
              const SpaceHeight(20.0),
              BlocBuilder<OrderBloc, OrderState>(
                builder: (context, state) {
                  final paymentAmount = state.maybeWhen(
                    orElse: () => 0,
                    loaded: (model) => model.paymentAmount,
                  );
                  final total = state.maybeWhen(
                    orElse: () => 0,
                    loaded: (model) => model.total,
                  );

                  final paymentMethod = state.maybeWhen(
                      orElse: () => 0, loaded: (model) => model.paymentMethod);
                  final diff = paymentAmount - total;

                  return BlocBuilder<CheckoutBloc, CheckoutState>(
                    builder: (context, state) {
                      List<ProductQuantity> products = state.maybeWhen(
                        orElse: () => [],
                        loaded:
                            (products, drafts, discount, tax, serviceCharge) =>
                                products,
                      );
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
                        },
                      );

                      final discountType = state.maybeWhen(
                        orElse: () => '',
                        loaded:
                            (products, drafts, discount, tax, serviceCharge) {
                          if (discount == null) {
                            return '';
                          }
                          return discount.type!;
                        },
                      );

                      final taxValue = state.maybeWhen(
                        orElse: () => 0,
                        loaded:
                            (products, drafts, discount, tax, serviceCharge) {
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
                        loaded:
                            (products, drafts, discount, tax, serviceCharge) {
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
                      final serviceCharge = subTotal * serviceChargeValue / 100;
                      final tax = subTotal * taxValue / 100;
                      final total = price <= discount
                          ? price
                          : subTotal + tax + serviceCharge;

                      final finalDiscount = subTotal <= discount
                          ? 0
                          : discountType == 'percentage'
                              ? subTotalPercentage
                              : discount;

                      totalPriceController.text = total.ceil().toString();

                      return Column(
                        children: [
                          Button.filled(
                            onPressed: () {
                              sendToEmail(
                                  emailController.text.toString(),
                                  products,
                                  finalDiscount.ceil().toString(),
                                  tax.ceil().toString(),
                                  serviceCharge.ceil().toString(),
                                  total.ceil().toString(),
                                  diff.ceil().toString(),
                                  price.ceil().toString(),
                                  paymentAmount.ceil().toString(),
                                  paymentMethod);
                              context.pop();
                            },
                            label: 'Send Email',
                          ),
                        ],
                      );
                    },
                  );
                },
              )
            ])));
  }
}
