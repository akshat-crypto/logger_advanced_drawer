import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import '../screens/cart.dart';

import '../screens/aboutus.dart';
import '../screens/products.dart';

class SideDrawer extends StatelessWidget {
  final AdvancedDrawerController advcontroller;
  static const routeName = '/side_drawer';

  const SideDrawer({Key? key, required this.advcontroller}) : super(key: key);

  Widget getDrawerHeader() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage('images/logo.png'), fit: BoxFit.contain),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }

  Widget getListTiles(
      {required IconData icon,
      required String title,
      required BuildContext context,
      Widget? pageName,
      required bool isClosed}) {
    return ListTile(
      visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      leading: Icon(icon, color: Colors.white),
      title: Text(title,
          // style: Theme.of(context).textTheme.headline1
          style: const TextStyle(fontSize: 22, color: Colors.white)),
      onTap: () => !isClosed
          ? Navigator.push(
              context, MaterialPageRoute(builder: (context) => pageName!))
          : advcontroller.hideDrawer(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.lightBlue.withOpacity(0.3),
      child: SingleChildScrollView(
        child: Column(
          children: [
            getDrawerHeader(),
            const SizedBox(height: 8),
            getListTiles(
              icon: Icons.home,
              title: 'Home',
              context: context,
              isClosed: true,
              // pageName: const Home(),
            ),
            const SizedBox(height: 8),
            getListTiles(
              icon: Icons.bar_chart_outlined,
              title: 'About Us',
              context: context,
              isClosed: false,
              pageName: const AboutUs(showAppBar: true),
            ),
            const SizedBox(height: 8),
            getListTiles(
              icon: Icons.bar_chart_outlined,
              title: 'Products',
              context: context,
              isClosed: false,
              pageName: const Products(showAppBar: true),
            ),
            const SizedBox(height: 8),
            getListTiles(
              icon: Icons.bar_chart_outlined,
              title: 'Cart',
              context: context,
              isClosed: false,
              pageName: const Cart(showAppBar: true),
            ),
            const SizedBox(height: 8),
            getListTiles(
              icon: Icons.arrow_back,
              title: 'Back',
              context: context,
              isClosed: true,
              // pageName: const Home(),
            ),
          ],
        ),
      ),
    );
  }
}
