import 'package:dokandar/views/account/account_screen.dart';
import 'package:dokandar/views/home/home_screen.dart';
import 'package:dokandar/views/order/order_screen.dart';
import 'package:dokandar/views/update/update_screen.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {

  dynamic pageController;
  var getPageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    // TODO: implement dispose
    super.dispose();

  }

  whenPageChanges(int pageIndex){
    setState(() {
      getPageIndex = pageIndex;
    });
  }

  onTabChangePage(int pageIndex){
    pageController.animateToPage(pageIndex,duration: const Duration(milliseconds: 400),curve: Curves.ease);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: whenPageChanges,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          UpdateScreen(),
          OrderScreen(),
          AccountScreen()
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );

  }

  Widget _bottomNavigationBar() {
    return SalomonBottomBar(
      items: [
        //Home
        SalomonBottomBarItem(
          icon: const Icon(Icons.home_outlined),
          title: const Text("Home"),
          selectedColor: Colors.purple,
        ),

        //DashBoard
        SalomonBottomBarItem(
          icon: const Icon(Icons.notifications_outlined),
          title: const Text("Update"),
          selectedColor: Colors.pink,
        ),

        //Cash
        SalomonBottomBarItem(
          icon: const Icon(Icons.list_outlined),
          title: const Text("Order"),
          selectedColor: Colors.orange,
        ),

        //Profile
        SalomonBottomBarItem(
          icon: const Icon(Icons.person_outline),
          title: const Text("Account"),
          selectedColor: Colors.teal,
        ),
      ],
      onTap: onTabChangePage,
      currentIndex: getPageIndex,
    );
  }
  
}


