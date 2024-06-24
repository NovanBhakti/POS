import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/components.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/data/datasources/send_email_datasource.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
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
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  List<ProductQuantity> products = state.maybeWhen(
                    orElse: () => [],
                    loaded: (products, drafts, discount, tax, serviceCharge) =>
                        products,
                  );
                  final price = state.maybeWhen(
                      orElse: () => 0,
                      loaded:
                          (products, drafts, discount, tax, serviceCharge) =>
                              products.fold(
                                0,
                                (previousValue, element) =>
                                    previousValue +
                                    (element.product.price!.toIntegerFromText *
                                        element.quantity),
                              ));
                  final tax = price * 0.11;
                  final total = price + tax;
                  totalPriceController.text = total.ceil().toString();
                  return Button.filled(
                      onPressed: () {
                        sendToEmail(
                            emailController.text.toString(), products, price);
                        context.pop();
                      },
                      label: 'send email');
                },
              )
            ])));
  }
}
