import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/components.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_quantity.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/send_email.dart';

class SendEmailHistory extends StatefulWidget {
  final dynamic dataOrder;
  const SendEmailHistory({super.key, required this.dataOrder});

  @override
  State<SendEmailHistory> createState() => _SendEmailHistoryState();
}

class _SendEmailHistoryState extends State<SendEmailHistory> {
  final TextEditingController emailController = TextEditingController();

  void sendToEmail(
      String email, List<ProductQuantity> products, String amount) {}

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
                  return Button.filled(
                      onPressed: () {
                        print(widget.dataOrder);

                        sendToEmail(
                            emailController.text.toString(),
                            products,
                            (int.parse(widget.dataOrder['total'].toString()))
                                .ceil()
                                .currencyFormatRp);
                        context.pop();
                      },
                      label: 'send email');
                },
              )
            ])));
  }
}
