import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/buttons.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/setting/bloc/tax/tax_bloc.dart';

class TaxDialog extends StatefulWidget {
  const TaxDialog({super.key});

  @override
  State<TaxDialog> createState() => _TaxDialogState();
}

class _TaxDialogState extends State<TaxDialog> {
  @override
  void initState() {
    context.read<TaxBloc>().add(const TaxEvent.addTax());
    super.initState();
  }

  int? taxIdSelected;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Stack(
        alignment: Alignment.center,
        children: [
          Text(
            'TAX',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      content: BlocBuilder<TaxBloc, TaxState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (tax) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: tax
                    .map(
                      (tax) => ListTile(
                        title: Text(
                          '${tax.name}',
                          style: const TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          '${tax.value}%',
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                        trailing: Checkbox(
                          value: tax.id == taxIdSelected,
                          onChanged: (value) {
                            setState(() {
                              if (tax.id == taxIdSelected) {
                                taxIdSelected = 0;
                                context.read<CheckoutBloc>().add(
                                      CheckoutEvent.removeTax(tax),
                                    );
                              } else {
                                taxIdSelected = tax.id!;
                                context.read<CheckoutBloc>().add(
                                      CheckoutEvent.addTax(tax),
                                    );
                              }
                            });
                          },
                        ),
                        onTap: () {
                          setState(() {
                            if (tax.id == taxIdSelected) {
                              taxIdSelected = null;
                              context.read<CheckoutBloc>().add(
                                    CheckoutEvent.removeTax(tax),
                                  );
                            } else {
                              taxIdSelected = tax.id!;
                              context.read<CheckoutBloc>().add(
                                    CheckoutEvent.addTax(tax),
                                  );
                            }
                          });
                        },
                      ),
                    )
                    .toList(),
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
