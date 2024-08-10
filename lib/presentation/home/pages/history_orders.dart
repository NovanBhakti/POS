import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/core/extensions/build_context_ext.dart';
import 'package:flutter_posresto_app/core/extensions/int_ext.dart';
import 'package:flutter_posresto_app/data/datasources/order_remote_datasource.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/detail_order_dialog.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/send_email_history.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/spaces.dart';

class OrdersHistoryPage extends StatefulWidget {
  const OrdersHistoryPage({super.key});

  @override
  State<OrdersHistoryPage> createState() => _OrdersHistoryPageState();
}

class _OrdersHistoryPageState extends State<OrdersHistoryPage> {
  int currentIndex = 0;
  bool internetCheck = false;
  List dataHistoryOrders = [];

  void indexValue(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // LEFT CONTENT
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.topCenter,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16.0),
                children: [
                  const Text(
                    'Order History',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SpaceHeight(16.0),
                  for (var i = 0; i < dataHistoryOrders.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(12.0),
                        leading: Assets.icons.success.svg(),
                        title: Text('ORDER${dataHistoryOrders[i]['id']}'),
                        subtitle: Text(DateFormat('dd-MM-yyyy hh:mm:ss').format(
                            DateTime.parse(
                                dataHistoryOrders[i]['transaction_time']))),
                        textColor: AppColors.primary,
                        tileColor: currentIndex == 0
                            ? AppColors.blueLight
                            : Colors.transparent,
                        onTap: () async {
                          await showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context) => DetailOrderDialog(
                              dataOrder: dataHistoryOrders[i],
                            ),
                          );
                        },
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
