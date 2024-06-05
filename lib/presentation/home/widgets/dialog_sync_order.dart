import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/assets/assets.gen.dart';
import 'package:flutter_posresto_app/core/components/components.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/presentation/setting/bloc/sync_order/sync_order_bloc.dart';

class DialogSyncOrder extends StatefulWidget {
  const DialogSyncOrder({super.key});

  @override
  State<DialogSyncOrder> createState() => _DialogSyncOrderState();
}

class _DialogSyncOrderState extends State<DialogSyncOrder> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Assets.icons.cash.svg()),
            const SpaceHeight(16.0),
            const Center(
              child: Text(
                'Are you sure want to sync order?',
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
                BlocConsumer<SyncOrderBloc, SyncOrderState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      error: (message) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            backgroundColor: AppColors.red,
                          ),
                        );
                      },
                      loaded: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Sync Order Success'),
                                backgroundColor: AppColors.green));
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return Flexible(
                            child: Button.filled(
                          label: 'Sync Order',
                          onPressed: () {
                            context
                                .read<SyncOrderBloc>()
                                .add(const SyncOrderEvent.syncOrder());
                          },
                        ));
                      },
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.green,
                          ),
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
