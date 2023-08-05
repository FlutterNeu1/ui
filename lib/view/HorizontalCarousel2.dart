import 'package:flutter/material.dart';

class HorizontalCarousel2 extends StatefulWidget {
  const HorizontalCarousel2({super.key});

  @override
  _HorizontalCarousel2State createState() => _HorizontalCarousel2State();
}

class _HorizontalCarousel2State extends State<HorizontalCarousel2> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 0),
          child: SizedBox(
            height: 200,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                _buildCurvedContainer1('Container 1'),
                _buildCurvedContainer2('Container 2'),
                _buildCurvedContainer3('Container 3'),
                _buildCurvedContainer4('Container 3'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCurvedContainer1(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(54, 75, 138, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Introducing\nbranchX Gold",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rubik",
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Buy digital gold, sell gold,\njewelry and get gold coins.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset(
                    "assets/xenie.png",
                    width: 80,
                    height: 140,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(340, 40),
                ),
                child: const Text(
                  "REGISTER NOW",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Rubik",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurvedContainer2(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(121, 91, 236, 1),
              Color.fromRGBO(194, 180, 255, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Refer your\nfriends",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rubik",
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Earn Rupee 150/- for every\nsuccessful refer",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: "Refer & Earn",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset(
                    "assets/xenie.png",
                    height: 140,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(340, 40),
                ),
                child: const Text(
                  "REGISTER NOW",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Rubik",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurvedContainer3(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(54, 75, 138, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Introducing\nbranchX Gold",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rubik",
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Buy digital gold, sell gold,\njewelry and get gold coins.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset(
                    "assets/xenie.png",
                    width: 80,
                    height: 140,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(340, 40),
                ),
                child: const Text(
                  "REGISTER NOW",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Rubik",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurvedContainer4(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(54, 75, 138, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Introducing\nbranchX Gold",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Rubik",
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Buy digital gold, sell gold,\njewelry and get gold coins.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: "Rubik",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset(
                    "assets/xenie.png",
                    width: 80,
                    height: 140,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(340, 40),
                ),
                child: const Text(
                  "REGISTER NOW",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Rubik",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
