import 'package:flutter/material.dart';
import 'package:ui/view/HorizontalCarousel2.dart';
import 'package:ui/view/cards1.dart';
import 'package:ui/view/listview.dart';
import 'package:ui/view/stories.dart';

import 'listview2.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;
  final List<String> imagePaths = [
    'assets/home.png',
    'assets/Gold 2.gif',
    'assets/QR-Cde 1.gif',
    'assets/send-money 2.png',
    'assets/Jewellery 1.gif',
    'assets/Spin 1.gif',
    'assets/quality-assurance.png',
    'assets/Wallet Icon 1.png',
    'assets/safety 1.png',
    'assets/Pay-Bill 1.gif',
    'assets/support 1.png',
    'assets/manual-book.png',
    'assets/Language 1.png',
  ];

  final List<String> textList = [
    'branchX',
    'X Gold',
    'Scan & pay',
    'Send Money',
    'Jewelry',
    'Spin Win',
    'Rewards',
    'Wallet',
    'Insurance',
    'Pay Bills',
    'Support',
    'Passbook',
    'Language',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Image.asset("assets/Group 658.png"),
        ),
        title: Image.asset("assets/BranchX logo 3.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("assets/ion_notifications-circle-outline.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("assets/Power button.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Story(),
            HorizontalCarousel(),
            Grid1view(),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: HorizontalCarousel2(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30.0, right: 260),
              child: Text(
                "Pay your Bills",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const Gridview3(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/credit-card (1) 1.png",
              width: 30,
              height: 30,
            ),
            label: 'MY CARDS',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 10,
              height: 30,
            ),
            label: 'XENIE',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/people 1.png",
              width: 30,
              height: 30,
            ),
            label: 'MY PROFILE',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: ClipOval(
              child: Image.asset(
                "assets/Group 2338.png",
                height: 60,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: const Color.fromARGB(255, 247, 247, 247),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: 100,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 30),
                      child: Image.asset("assets/BranchX logo 3.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 240),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                            "assets/ion_notifications-circle-outline.png"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildDrawerItem(imagePaths[0], textList[0]),
                          _buildDrawerItem(imagePaths[1], textList[1]),
                          _buildDrawerItem(imagePaths[2], textList[2]),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildDrawerItem(imagePaths[3], textList[3]),
                          _buildDrawerItem(imagePaths[4], textList[4]),
                          _buildDrawerItem(imagePaths[5], textList[5]),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildDrawerItem(imagePaths[6], textList[6]),
                          _buildDrawerItem(imagePaths[7], textList[7]),
                          _buildDrawerItem(imagePaths[8], textList[8]),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildDrawerItem(imagePaths[9], textList[9]),
                          _buildDrawerItem(imagePaths[10], textList[10]),
                          _buildDrawerItem(imagePaths[11], textList[11]),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildDrawerItem(imagePaths[12], textList[12]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    height: 69,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset("assets/017---Male-User.png"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rohan Vijapur",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                fontFamily: "Rubik"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 200.0),
                          child: Image.asset("assets/Power button.png"),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(String imagePath, String text) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        margin: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 40,
                height: 40,
              ),
              const SizedBox(height: 8),
              Text(
                text,
                style: const TextStyle(fontSize: 12, fontFamily: "Rubik"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
