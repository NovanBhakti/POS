import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_posresto_app/core/constants/colors.dart';
import 'package:flutter_posresto_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_posresto_app/presentation/auth/login_page.dart';
import 'package:flutter_posresto_app/presentation/home/pages/history_orders.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/dialog_sync_order.dart';
import 'package:flutter_posresto_app/presentation/home/widgets/home_title.dart';
import 'package:flutter_posresto_app/presentation/setting/pages/settings_page.dart';
import '../../../core/assets/assets.gen.dart';
import '../../auth/bloc/bloc/logout_bloc.dart';
import '../widgets/nav_item.dart';
import 'home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  final searchController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _pages = [
    const HomePage(),
    const OrdersHistoryPage(),
    // const Center(child: Text('This is page 1')),
    // const Center(child: Text('This is page 2')),
    // const Center(child: Text('This is page 3')),
    // const Center(child: Text('This is page 4')),
    const Test()
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu), // Ini adalah ikon hamburger
            onPressed: () {
              if (scaffoldKey.currentState!.isDrawerOpen) {
                scaffoldKey.currentState!.closeDrawer();
              } else {
                scaffoldKey.currentState!.openDrawer();
              }
            },
          ),
          title: const HomeTitle(),
        ),
        key: scaffoldKey,
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.08,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: ClipRect(
                    child: SizedBox(
                      child: ColoredBox(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            NavItem(
                              iconPath: Assets.icons.logo.path,
                              isActive: false,
                              onTap: () => {},
                            ),
                            const Divider(
                              height: 5,
                              thickness: 1,
                              indent: 5,
                              endIndent: 5,
                              color: Colors.grey,
                            ),
                            NavItem(
                              iconPath: Assets.icons.homeResto.path,
                              isActive: _selectedIndex == 0,
                              onTap: () => _onItemTapped(0),
                            ),
                            NavItem(
                              iconPath: Assets.icons.setting.path,
                              isActive: _selectedIndex == 1,
                              onTap: () => _onItemTapped(1),
                            ),
                            // NavItem(
                            //   iconPath: Assets.icons.setting.path,
                            //   isActive: _selectedIndex == 2,
                            //   onTap: () => _onItemTapped(2),
                            // ),
                            // // if (Platform.isWindows)
                            // NavItem(
                            //   iconPath: Assets.icons.cash.path,
                            //   isActive: false,
                            //   onTap: () {
                            //     showDialog(
                            //       context: context,
                            //       builder: (context) =>
                            //           const DialogSyncProduct(),
                            //     );
                            //   },
                            // ),
                            // NavItem(
                            //   iconPath: Assets.icons.cash.path,
                            //   isActive: false,
                            //   onTap: () {
                            //     showDialog(
                            //         context: context,
                            //         builder: (context) =>
                            //             const DialogSyncOrder());
                            //   },
                            // ),
                            BlocListener<LogoutBloc, LogoutState>(
                              listener: (context, state) {
                                state.maybeMap(
                                  orElse: () {},
                                  error: (e) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(e.message),
                                        backgroundColor: AppColors.red,
                                      ),
                                    );
                                  },
                                  success: (value) {
                                    AuthLocalDatasource().removeAuthData();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Logout success'),
                                        backgroundColor: AppColors.primary,
                                      ),
                                    );
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const LoginPage();
                                    }));
                                  },
                                );
                              },
                              child: NavItem(
                                iconPath: Assets.icons.logout.path,
                                isActive: false,
                                onTap: () {
                                  context
                                      .read<LogoutBloc>()
                                      .add(const LogoutEvent.logout());
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: _pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
