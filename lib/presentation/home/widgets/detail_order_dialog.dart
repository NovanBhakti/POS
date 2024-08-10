import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/data/datasources/order_remote_datasource.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/send_email_history.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';
import '../models/order_item.dart';

class DetailOrderDialog extends StatefulWidget {
  final dynamic dataOrder;
  const DetailOrderDialog({super.key, required this.dataOrder});

  @override
  State<DetailOrderDialog> createState() => _DetailOrderDialogState();
}

class _DetailOrderDialogState extends State<DetailOrderDialog> {
  List<OrderItem> data = [];
  int totalQty = 0;
  int totalPrice = 0;
  List dataHistoryOrders = [];

  Future<void> fetchData() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final res = await OrderRemoteDatasource().getOrderHistory();
      setState(() {
        dataHistoryOrders = res['data'];
        dataHistoryOrders.sort((a, b) => DateTime.parse(b['transaction_time'])
            .compareTo(DateTime.parse(a['transaction_time'])));
      });
      prefs.setString("dataOrders", jsonEncode(res['data']));
    } catch (e) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final res = jsonDecode(prefs.getString("dataOrders")!);
      setState(() {
        dataHistoryOrders = res;
        dataHistoryOrders.sort((a, b) => DateTime.parse(b['transaction_time'])
            .compareTo(DateTime.parse(a['transaction_time'])));
      });
      print(res.toString());
    }
  }

  void _showDialogs(BuildContext context) async {
    for (var order in dataHistoryOrders) {
      await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => SendEmailHistory(
          dataOrder: order,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Assets.icons.success.svg()),
            const SpaceHeight(16.0),
            const Center(
              child: Text(
                'Pembayaran telah sukses dilakukan',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SpaceHeight(20.0),
            const Text('METODE BAYAR'),
            const SpaceHeight(5.0),
            Text(
              widget.dataOrder['payment_method'],
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SpaceHeight(10.0),
            const Divider(),
            const SpaceHeight(8.0),
            const Text('TOTAL TAGIHAN'),
            const SpaceHeight(5.0),
            Text(
              int.parse(widget.dataOrder['total'].toString())
                  .ceil()
                  .currencyFormatRp
                  .toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SpaceHeight(10.0),
            const Divider(),
            const SpaceHeight(8.0),
            const Text('NOMINAL BAYAR'),
            const SpaceHeight(5.0),
            Text(
              int.parse(widget.dataOrder['payment_amount'].toString())
                  .ceil()
                  .currencyFormatRp
                  .toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const Divider(),
            const SpaceHeight(8.0),
            const Text('KEMBALIAN'),
            const SpaceHeight(5.0),
            Text(
              (int.parse(widget.dataOrder['payment_amount'].toString()) -
                      int.parse(widget.dataOrder['total'].toString()))
                  .ceil()
                  .currencyFormatRp,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SpaceHeight(10.0),
            const Divider(),
            const SpaceHeight(8.0),
            const Text('WAKTU PEMBAYARAN'),
            const SpaceHeight(5.0),
            Text(
              DateFormat('dd MMMM yyyy, HH:mm')
                  .format(DateTime.parse(widget.dataOrder['transaction_time'])),
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SpaceHeight(20.0),
            Row(
              children: [
                Flexible(
                  child: Button.filled(
                    onPressed: () {
                      context.pop();
                    },
                    label: 'kembali',
                  ),
                ),

                const SpaceWidth(8.0),
                // Flexible(
                //   child: Button.filled(
                //     onPressed: () async {
                //       // final printValue =
                //       //           await CwbPrint.instance.printOrder(
                //       //         data,
                //       //         totalQty,
                //       //         totalPrice,
                //       //         'Tunai',
                //       //         totalPrice,
                //       //         'Bahri',
                //       //       );
                //       //       await PrintBluetoothThermal.writeBytes(printValue);
                //     },
                //     label: 'Print',
                //   ),
                // ),
                const SpaceWidth(8.0),
                Flexible(
                  child: Button.filled(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            SendEmailHistory(dataOrder: widget.dataOrder),
                      );
                    },
                    label: 'Send To Email',
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
