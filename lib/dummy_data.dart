// //
// side drawer initial data
// return Drawer(
    //   semanticLabel: 'Menu',
    //   elevation: 18.0,
    //   child: Container(
    //     width: double.infinity,
    //     height: double.infinity,
    //     color: Colors.lightBlue.withOpacity(0.3),
    //     child: SingleChildScrollView(
    //       child: SafeArea(
    //         child: Column(
    //           children: [
    //             getDrawerHeader(),
    //             const SizedBox(height: 8),
    //             getListTiles(
    //               icon: Icons.home,
    //               title: 'Home',
    //               context: context,
    //               isClosed: true,
    //               // pageName: const Home(),
    //             ),
    //             const SizedBox(height: 8),
    //             getListTiles(
    //               icon: Icons.bar_chart_outlined,
    //               title: 'About Us',
    //               context: context,
    //               isClosed: false,
    //               pageName: const AboutUs(showAppBar: true),
    //             ),
    //             const SizedBox(height: 8),
    //             const SizedBox(height: 8),
    //             const SizedBox(height: 8),
    //             getListTiles(
    //               icon: Icons.arrow_back,
    //               title: 'Back',
    //               context: context,
    //               isClosed: true,
    //               // pageName: const Home(),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );


//scaffold body initial data
// original code
    // return Scaffold(
    //   // drawerDragStartBehavior: DragStartBehavior.down,
    //   appBar: AppBar(
    //     // shadowColor: Colors.white,
    //     backgroundColor: Colors.transparent,
    //     elevation: 0,
    //   ),
    //   extendBodyBehindAppBar: true,
    //   body: Container(
    //     height: MediaQuery.of(context).size.height,
    //     width: double.infinity,
    //     child: SafeArea(child: _children[_currentIndex]),
    //     decoration: const BoxDecoration(
    //       image: DecorationImage(
    //         // image: NetworkImage(backgroundUrl),
    //         image: AssetImage('assets/images/test3.jpeg'),
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //   ),
    //   // extendBody: true,
    //   floatingActionButton: getFloatingActionButton(),
    //   bottomNavigationBar: getBottomNavigationBar(),
    //   drawer: const SideDrawer(),
    // );


// side drawer plugin drawer ex
// drawer: SafeArea(
      //   child: Container(
      //     child: ListTileTheme(
      //       textColor: Colors.white,
      //       iconColor: Colors.white,
      //       child: Column(
      //         mainAxisSize: MainAxisSize.max,
      //         children: [
      //           Container(
      //             width: 128.0,
      //             height: 128.0,
      //             margin: const EdgeInsets.only(
      //               top: 24.0,
      //               bottom: 64.0,
      //             ),
      //             clipBehavior: Clip.antiAlias,
      //             decoration: BoxDecoration(
      //               color: Colors.black26,
      //               shape: BoxShape.circle,
      //             ),
      //             // child: Image.asset(
      //             //   'assets/images/flutter_logo.png',
      //             // ),
      //           ),
      //           ListTile(
      //             onTap: () {},
      //             leading: Icon(Icons.home),
      //             title: Text('Home'),
      //           ),
      //           ListTile(
      //             onTap: () {},
      //             leading: Icon(Icons.account_circle_rounded),
      //             title: Text('Profile'),
      //           ),
      //           ListTile(
      //             onTap: () {},
      //             leading: Icon(Icons.favorite),
      //             title: Text('Favourites'),
      //           ),
      //           ListTile(
      //             onTap: () {},
      //             leading: Icon(Icons.settings),
      //             title: Text('Settings'),
      //           ),
      //           Spacer(),
      //           DefaultTextStyle(
      //             style: TextStyle(
      //               fontSize: 12,
      //               color: Colors.white54,
      //             ),
      //             child: Container(
      //               margin: const EdgeInsets.symmetric(
      //                 vertical: 16.0,
      //               ),
      //               child: Text('Terms of Service | Privacy Policy'),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

