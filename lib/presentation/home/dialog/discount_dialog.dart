import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/buttons.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/setting/bloc/discount/discount_bloc.dart';

class DiscountDialog extends StatefulWidget {
  const DiscountDialog({Key? key}) : super(key: key);

  @override
  State<DiscountDialog> createState() => _DiscountDialogState();
}

class _DiscountDialogState extends State<DiscountDialog> {
  @override
  void initState() {
    context.read<DiscountBloc>().add(const DiscountEvent.getDiscount());
    super.initState();
  }

  int? discountIdSelected;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Discount',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: BlocBuilder<DiscountBloc, DiscountState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (discounts) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: discounts
                      .map(
                        (discount) => ListTile(
                          title: Text(
                            '${discount.name}',
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            ' ${discount.type == 'percentage' ? discount.value.toString() + '%' : 'Rp. ' + discount.value.toString()}',
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: Radio<int>(
                            activeColor: AppColors.primary,
                            value: discount.id!,
                            groupValue: discountIdSelected,
                            onChanged: (int? value) {
                              setState(() {
                                if (discount.id == discountIdSelected) {
                                  discountIdSelected = 0;
                                  context.read<CheckoutBloc>().add(
                                        CheckoutEvent.removeDiscount(discount),
                                      );
                                } else {
                                  discountIdSelected = discount.id!;
                                  context.read<CheckoutBloc>().add(
                                        CheckoutEvent.addDiscount(discount),
                                      );
                                }
                              });
                            },
                          ),
                          onTap: () {
                            setState(() {
                              if (discount.id == discountIdSelected) {
                                discountIdSelected = 0;
                                context.read<CheckoutBloc>().add(
                                      CheckoutEvent.removeDiscount(discount),
                                    );
                              } else {
                                discountIdSelected = discount.id!;
                                context.read<CheckoutBloc>().add(
                                      CheckoutEvent.addDiscount(discount),
                                    );
                              }
                            });
                          },
                        ),
                      )
                      .toList(),
                ),
              );
            },
          );
        },
      ),
      actions: [
        Button.filled(
          onPressed: () {
            Navigator.of(context).pop();
          },
          label: 'Close',
        ),
      ],
    );
  }
}
