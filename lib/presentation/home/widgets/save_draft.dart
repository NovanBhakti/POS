import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/components/components.dart';
import 'package:flutter_posresto_app/presentation/home/bloc/bloc/checkout_bloc.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/order_menu.dart';

class SaveToDraft extends StatefulWidget {
  const SaveToDraft({super.key});

  @override
  State<SaveToDraft> createState() => _SaveToDraftState();
}

class _SaveToDraftState extends State<SaveToDraft> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
    );
  }
}
