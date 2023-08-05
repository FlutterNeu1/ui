import 'package:flutter/material.dart';

class HorizontalCarousel extends StatefulWidget {
  @override
  _HorizontalCarouselState createState() => _HorizontalCarouselState();
}

class _HorizontalCarouselState extends State<HorizontalCarousel> {
  PageController _pageController = PageController(initialPage: 0);
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
          padding: const EdgeInsets.only(left: 20.0, right: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                _buildCurvedContainer1(Colors.blue, 'Container 1'),
                _buildCurvedContainer2(Colors.green, 'Container 2'),
                _buildCurvedContainer3(Colors.orange, 'Container 3'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIndicator(0),
            _buildIndicator(1),
            _buildIndicator(2),
          ],
        ),
      ],
    );
  }

  Widget _buildCurvedContainer1(Color color, String text) {
    List<Color> gradientColors = [];
    if (color == Colors.blue) {
      gradientColors = [const Color(0xFF80A0FF), const Color(0xFF5275DE)];
    } else if (color == Colors.green) {
      gradientColors = [const Color(0xFF80A0FF), const Color(0xFF5275DE)];
    } else if (color == Colors.orange) {
      gradientColors = [
        const Color(0xFFC5A265),
        const Color(0xFF927744),
      ];
    }

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 100.0, left: 34, bottom: 160),
                  child: Text(
                    "Namaste,",
                    style: TextStyle(
                        fontSize: 14, color: Colors.white, fontFamily: "Rubik"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 50, bottom: 160),
                  child: Text(
                    "FULL KYC",
                    style: TextStyle(
                        fontSize: 12, color: Colors.white, fontFamily: "Rubik"),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        right: 10.0, left: 0, bottom: 160),
                    child: Image.asset("assets/Frame 243301.png")),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 254.0, left: 10, bottom: 90),
              child: Text(
                "SAYEED",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(right: 228.0, left: 25, bottom: 40, top: 60),
              child: Text(
                "WALLET BALANCE",
                style: TextStyle(
                    fontSize: 10, color: Colors.white, fontFamily: "Rubik"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 150.0, left: 35, bottom: 40, top: 100),
              child: Row(
                children: [
                  const Text(
                    "₹ XXX-XXX",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset("assets/eye 1.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0, right: 20, left: 30),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(1, 28, 14, 89),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(150, 40),
                    ),
                    child: const Text(
                      "ADD MONEY",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(150, 40),
                    ),
                    child: const Text(
                      "ACC DETAILS",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: "Rubik",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                child: Container(
                  width: 20,
                  height: 60,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurvedContainer2(Color color, String text) {
    List<Color> gradientColors = [];
    if (color == Colors.blue) {
      gradientColors = [const Color(0xFF80A0FF), const Color(0xFF5275DE)];
    } else if (color == Colors.green) {
      gradientColors = [const Color(0xFF80A0FF), const Color(0xFF5275DE)];
    } else if (color == Colors.orange) {
      gradientColors = [
        const Color(0xFFC5A265),
        const Color(0xFF927744),
      ];
    }

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 60.0, left: 30, bottom: 160),
                  child: Text(
                    "MY WALLET",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 20, bottom: 160),
                  child: Text(
                    "COMPLETE KYC",
                    style: TextStyle(
                        fontSize: 12, color: Colors.white, fontFamily: "Rubik"),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        right: 10.0, left: 0, bottom: 160),
                    child: Image.asset("assets/warning (1) 1.png")),
              ],
            ),
            const Padding(
              padding:
                  EdgeInsets.only(right: 228.0, left: 25, bottom: 40, top: 60),
              child: Text(
                "WALLET BALANCE",
                style: TextStyle(
                    fontSize: 10, color: Colors.white, fontFamily: "Rubik"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 150.0, left: 35, bottom: 40, top: 100),
              child: Row(
                children: [
                  const Text(
                    "₹ XXX-XXX",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image.asset("assets/eye 1.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0, right: 20, left: 30),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(1, 28, 14, 89),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(150, 40),
                    ),
                    child: const Text(
                      "ADD MONEY",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(150, 40),
                    ),
                    child: const Text(
                      "ACC DETAILS",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: "Rubik",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                child: Container(
                  width: 20,
                  height: 60,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurvedContainer3(Color color, String text) {
    List<Color> gradientColors = [];
    if (color == Colors.blue) {
      gradientColors = [const Color(0xFF80A0FF), const Color(0xFF5275DE)];
    } else if (color == Colors.green) {
      gradientColors = [const Color(0xFF80A0FF), const Color(0xFF5275DE)];
    } else if (color == Colors.orange) {
      gradientColors = [
        const Color(0xFFC5A265),
        const Color(0xFF927744),
      ];
    }

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 60.0, left: 30, bottom: 160),
                  child: Text(
                    "GOLD CARD",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Padding(
              padding:
                  EdgeInsets.only(right: 232.0, left: 15, bottom: 40, top: 60),
              child: Text(
                "AVAILABLE GOLD",
                style: TextStyle(
                    fontSize: 10, color: Colors.white, fontFamily: "Rubik"),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(right: 150.0, left: 35, bottom: 40, top: 100),
              child: Row(
                children: [
                  Text(
                    "5.5425/gm",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0, right: 20, left: 30),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(1, 28, 14, 89),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(140, 40),
                    ),
                    child: const Text(
                      "DELIEVER GOLD",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: const Size(138, 40),
                    ),
                    child: const Text(
                      "SELL GOLD",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: "Rubik",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
                child: Container(
                  width: 20,
                  height: 60,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndicator(int pageIndex) {
    return Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == pageIndex
            ? Colors.blue
            : const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
