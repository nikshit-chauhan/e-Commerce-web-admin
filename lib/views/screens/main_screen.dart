import 'package:e_commerce_admin/views/screens/side_bar_screens/category_screen.dart';
import 'package:e_commerce_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:e_commerce_admin/views/screens/side_bar_screens/order_screen.dart';
import 'package:e_commerce_admin/views/screens/side_bar_screens/product_screen.dart';
import 'package:e_commerce_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:e_commerce_admin/views/screens/side_bar_screens/vendor_screen.dart';
import 'package:e_commerce_admin/views/screens/side_bar_screens/withdrawal_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedScreen = DashboardScreen();

  screenSelector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedScreen = DashboardScreen();
        });
        break;
      case VendorScreen.routeName:
        setState(() {
          _selectedScreen = VendorScreen();
        });
        break;
      case CategoryScreen.routeName:
        setState(() {
          _selectedScreen = CategoryScreen();
        });
        break;
      case OrderScreen.routeName:
        setState(() {
          _selectedScreen = OrderScreen();
        });
        break;
      case ProductScreen.routeName:
        setState(() {
          _selectedScreen = ProductScreen();
        });
        break;
      case UploadBannerScreen.routeName:
        setState(() {
          _selectedScreen = UploadBannerScreen();
        });
        break;
      case WithdrawalScreen.routeName:
        setState(() {
          _selectedScreen = WithdrawalScreen();
        });
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      sideBar: SideBar(
        items: [
          AdminMenuItem(
            title: 'Dashboard',
            icon: Icons.dashboard,
            route: DashboardScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Vendors',
            icon: CupertinoIcons.person_3,
            route: VendorScreen.routeName,
          ),
          AdminMenuItem(
              title: 'Withdrawal',
              icon: CupertinoIcons.money_dollar,
              route: WithdrawalScreen.routeName),
          AdminMenuItem(
            title: 'Orders',
            icon: Icons.shopping_cart_outlined,
            route: OrderScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Categories',
            icon: Icons.category,
            route: CategoryScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Upload Banner',
            icon: CupertinoIcons.plus,
            route: UploadBannerScreen.routeName,
          ),
          AdminMenuItem(
            title: 'Products',
            icon: Icons.shop,
            route: ProductScreen.routeName,
          ),
        ],
        selectedRoute: '',
        onSelected: (item) {
          screenSelector(item);
        },
        header: Container(
          height: 50,
          width: double.infinity,
          color: Colors.greenAccent,
          child: const Center(
            child: Text(
              'Store Pannel',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.amber.shade100,
      appBar: AppBar(
        title: const Text('Management'),
      ),
      body: _selectedScreen,
    );
  }
}
