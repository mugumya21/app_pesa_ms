// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_pesa_ms/common_components/my_botton_nav_bar.dart';
import 'package:app_pesa_ms/screens/deposits_page.dart';
import 'package:app_pesa_ms/screens/loans_page.dart';
import 'package:flutter/material.dart';

import '../screens/dashboard_page.dart';

class SideBar extends StatefulWidget {
  SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  // selected index
  int selectedIdex = 0;

  // list of pages
  final List _pages = [DashboardPage(), LoanPage()];

// void function to loop thru
  void navigatepages(int index) {
    setState(() {
      selectedIdex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // MyBox(
          //     color: Colors.black,
          //     child: MyButton(
          //       color: Colors.yellow,
          //       onTap: () {
          //         Provider.of<ThemeProvider>(context, listen: false)
          //             .toggletheme();
          //       },
          //     ))
        ],
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    'assets/images/pesamanager.png',
                    color: Colors.white,
                  )),
                  //tap
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    onTap: () {},
                    title: Text("Dasboard"),
                    textColor: Colors.white,
                  ),

                  //tap
                  ListTile(
                    leading: Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                    onTap: () {},
                    title: Text("Clients"),
                    textColor: Colors.white,
                  ),
                  //tap
                  ListTile(
                    leading:  Image.asset(
                    'assets/images/loan.png',
                    color: Colors.white, height: 30,
                  ),
                    onTap: () {},
                    title: Text("Loans"),
                    textColor: Colors.white,
                  ),
                  //tap
                  ListTile(
                    leading: Image.asset(
                    'assets/images/wallet.png',
                    color: Colors.white, height: 30,
                  ),
                    onTap: () {},
                    title: Text("Deposit"),
                    textColor: Colors.white,
                  ),
                  //tap
                  ListTile(
                    leading: Image.asset(
                    'assets/images/withdraw.png',
                    color: Colors.white, height: 30,
                  ),
                    onTap: () {},
                    title: Text("WithDraw"),
                    textColor: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout_rounded,
                      color: Colors.white,
                    ),
                    onTap: () {},
                    title: Text("Logout"),
                    textColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _pages[selectedIdex],
      // start from here, use index to access the home and the cart btn and pages
      bottomNavigationBar:
          BottomNavBar(onTabChange: (index) => navigatepages(index)),
    );
  }
}
