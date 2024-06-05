import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/components.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/order_menu.dart';

class Draft extends StatelessWidget {
  const Draft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8, // Set width of content
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SpaceHeight(20.0),
              Row(
                children: [
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                  ),
                  const SpaceWidth(20.0),
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {
                        // context.read<OrderBloc>().add(OrderEvent.saveToDraft());
                        Navigator.pop(context);
                      },
                      child: const Text('Save'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
