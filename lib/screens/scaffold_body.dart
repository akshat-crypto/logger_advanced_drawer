import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import './virtual_tour.dart';
import '../widgets/swipe_header.dart';

class ScaffoldBody extends StatefulWidget {
  const ScaffoldBody({Key? key}) : super(key: key);

  @override
  _ScaffoldBodyState createState() => _ScaffoldBodyState();
}

class _ScaffoldBodyState extends State<ScaffoldBody> {
  List imageList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtOQ5iWjZN6RPw1AqGRcL4cRmRuSYyXuF-BEY4y1LjvW0Zsb09bcD50vku2UmsEdN_l80&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH_Z85n1aRkGLadt9zQP_d5sKho6uULV3QDY5JGBHXrAINICJWHSb0PJWVpGRMGeSWs2U&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1MW1BztjIngq-yPQ1BPUR3nfbZ6Folvecv0JTEbEwIyy7k0J4kt0QB5mmnLs-mLhM6pc&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJP_Zr0jhcpAI6WpVVnlnW-aR9WpbxUmqP4A&usqp=CAU',
  ];

  Widget getProductCards(String imagePath, String title) {
    // return Card(
    //   elevation: 8,
    //   color: Colors.grey,
    //   child: Column(
    //     children: [],
    //   ),
    // );
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(
                imagePath,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                width: 300,
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 300,
            width: double.infinity,
            child: getSwiperHeader(imageList, context),
          ),
          const SizedBox(height: 5),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white.withOpacity(0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'PRODUCTS',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'Logger India offers a wide spectrum of experiences through an extensive range of products. To complement the Sanitaryware products there is a range of faucets, tiles, shower, products, kitchen, sinks and personal care products',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          getProductCards('images/sanit1.jpeg', 'SanitaryWare'),
          const SizedBox(height: 8),
          getProductCards('images/sanit2.jpeg', 'Faucets'),
          const SizedBox(height: 8),
          getProductCards('images/sanit3.jpg', 'Tiles'),
          const SizedBox(height: 8),
          getProductCards('images/sanit4.jpg', 'Wellness'),
          const SizedBox(height: 8),
          getProductCards('images/sanit5.jpg', 'Kitchen Sinks'),
          const SizedBox(height: 8),
          getProductCards('images/sanit6.jpg', 'Mirrors'),
          const SizedBox(height: 8),
          AnimatedButton(
            enabled: true,
            shadowDegree: ShadowDegree.light,
            color: Colors.lightBlue,
            duration: 60,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VirtualTour(),
              ),
            ),
            child: const Text(
              'Virtual Tour',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
