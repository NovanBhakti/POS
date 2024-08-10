import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_quantity.dart';

import '../../../core/components/spaces.dart';
import '../../../core/constants/colors.dart';
import '../bloc/bloc/checkout_bloc.dart';

class OrderMenu extends StatelessWidget {
  final ProductQuantity data;
  const OrderMenu({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context
                        .read<CheckoutBloc>()
                        .add(CheckoutEvent.removeItem(data.product));
                  },
                  child: Container(
                    width: 20,
                    height: 30,
                    color: AppColors.white,
                    child: const Icon(
                      Icons.remove_circle,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                  child: Center(
                      child: Text(
                    data.quantity.toString(),
                  )),
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<CheckoutBloc>()
                        .add(CheckoutEvent.addItem(data.product));
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    color: AppColors.white,
                    child: const Icon(
                      Icons.add_circle,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListTile(
                contentPadding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                title: Text(data.product.name!,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 17.0,
                    )),
              ),
            ),
            const SpaceWidth(8),
            SizedBox(
              width: 105.0,
              child: ListTile(
                contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                title: Text(
                  (data.product.price!.toIntegerFromText * data.quantity)
                      .currencyFormatRp,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,
                  ),
                ),
                subtitle: Text(
                  '  @' +
                      data.product.price!.toIntegerFromText.currencyFormatRp,
                  style: const TextStyle(
                    color: AppColors.grey,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SpaceHeight(16),
      ],
    );
  }
}
