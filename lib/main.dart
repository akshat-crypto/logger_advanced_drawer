import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './screens/aboutus.dart';
import './screens/cart.dart';
import './screens/contactus.dart';
import './screens/products.dart';
import './screens/virtual_tour.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import './screens/side_drawer.dart';
import './screens/scaffold_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.black),
          primarySwatch: Colors.lightBlue,
          splashColor: Colors.amber,
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: const TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
                headline1: const TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              )),
      // routes: {
      //   '/': (ctx) => const Home(),
      //   SideDrawer.routeName: (ctx) => const SideDrawer(),
      // },
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // extraa featuress
  int _currentIndex = 0;

  final List<Widget> _children = const [
    ScaffoldBody(),
    Products(showAppBar: false),
    ContactUs(showAppBar: false),
    VirtualTour(),
    Cart(showAppBar: false),
  ];

  void onTabTapped(int index) {
    //index++;
    setState(() {
      _currentIndex = index;
    });
  }

  launchWhatsApp() async {
    const link = WhatsAppUnilink(
      phoneNumber: '+919529958624',
      text: "Hey! I'm inquiring about something!",
    );
    await launch('$link');
  }

  Widget getFloatingActionButton() {
    return FloatingActionButton(
        backgroundColor: Colors.green,
        child: const ImageIcon(
          AssetImage('images/whatsapp.png'),
          color: Colors.white,
          size: 50,
        ),
        onPressed: () => {launchWhatsApp()});
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_sharp), label: 'Products'),
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Contacts'),
        BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt), label: 'VirtualTour'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
      ],
    );
  }

  final _advancedDrawerController = AdvancedDrawerController();
  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }

  String backgroundUrl =
      'https://cdn11.bigcommerce.com/s-uqjjjaiwji/product_images/uploaded_images/cementia-grey-1-.jpg';

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.lightBlue.withOpacity(0.6),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // shadowColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SafeArea(child: _children[_currentIndex]),
          decoration: const BoxDecoration(
            image: DecorationImage(
              // image: NetworkImage(backgroundUrl),
              image: AssetImage('assets/images/test3.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        floatingActionButton: getFloatingActionButton(),
        bottomNavigationBar: getBottomNavigationBar(),
        extendBody: true,
      ),
      drawer: SideDrawer(advcontroller: _advancedDrawerController),
    );
  }
}
