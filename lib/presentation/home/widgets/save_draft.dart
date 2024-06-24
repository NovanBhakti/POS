import 'package:flutter/material.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/core/extensions/string_ext.dart';
import 'package:flutter_posresto_app/presentation/home/models/product_quantity.dart';
import 'package:flutter_posresto_app/core/components/spaces.dart';

class SaveDraft extends StatelessWidget {
  final ProductQuantity data;
  const SaveDraft({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.fromLTRB(30, 0, 30, 0), // Padding untuk ListTile
          child: Row(
            children: [
              Expanded(
                child: Text(
                  data.product.name!,
                  overflow: TextOverflow
                      .ellipsis, // Menangani overflow jika diperlukan
                  style: const TextStyle(
                    fontSize: 17.0,
                  ),
                ),
              ),
            ],
          ),
        ), // Spasi vertikal setelah ListTile
      ],
    );
  }
}
