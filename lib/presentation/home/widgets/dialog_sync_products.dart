import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/assets/assets.gen.dart';
import 'package:flutter_posresto_app/core/components/components.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/data/datasources/product_local_datasource.dart';
import 'package:flutter_posresto_app/presentation/setting/bloc/sync_product/sync_product_bloc.dart';

class DialogSyncProduct extends StatefulWidget {
  const DialogSyncProduct({super.key});

  @override
  State<DialogSyncProduct> createState() => _DialogSyncProductState();
}

class _DialogSyncProductState extends State<DialogSyncProduct> {
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
                'Are you sure want to sync products?',
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
                BlocConsumer<SyncProductBloc, SyncProductState>(
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
                      loaded: (productResponseModels) {
                        ProductLocalDatasource.instance.deleteAllProducts();
                        ProductLocalDatasource.instance
                            .insertProducts(productResponseModels.data!);
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Sync Product Success'),
                                backgroundColor: AppColors.green));
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return Flexible(
                            child: Button.filled(
                          label: 'Sync Product',
                          onPressed: () {
                            context
                                .read<SyncProductBloc>()
                                .add(const SyncProductEvent.syncProduct());
                          },
                        ));
                      },
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primary,
                          ),
                        );
                      },
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
