import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/buttons.dart';
import 'package:flutter_posresto_app/core/components/spaces.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_quantity.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/save_draft.dart';

class Draft extends StatelessWidget {
  const Draft({Key? key}) : super(key: key);
  double calculateTotalPrice(List<ProductQuantity> draft) {
    double total = 0.0;
    for (var item in draft) {
      total += double.parse(item.product.price ?? '0') * item.quantity * 100;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Stack(
        alignment: Alignment.center,
        children: [
          Text(
            'Drafts',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: Text('No Drafts'),
                    ),
                    loaded: (products, drafts, discount, tax, service) {
                      debugPrint('state: ${drafts.toString()}');
                      if (drafts.isEmpty) {
                        return const Center(
                          child: Text('No Drafts'),
                        );
                      }

                      return ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final draft = drafts[index];
                          final totalPrice = calculateTotalPrice(draft);
                          return InkWell(
                            onTap: () {
                              for (var item in draft) {
                                context.read<CheckoutBloc>().add(
                                      CheckoutEvent.addItemDraft(
                                          item.product, item),
                                    );
                              }
                              context
                                  .read<CheckoutBloc>()
                                  .add(CheckoutEvent.removeDraft(index));

                              Navigator.pop(context);
                            },
                            child: Card(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order #${index + 1} | ${totalPrice.toInt().currencyFormatRp}',
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    Column(
                                      children: draft
                                          .map((item) => SaveDraft(data: item))
                                          .toList(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: drafts.length,
                      );
                    },
                  );
                },
              ),
              const SpaceHeight(20.0),
            ],
          ),
        ),
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
