import 'package:flutter/material.dart';

class Grid1view extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/Gold 2.gif',
    'assets/QR-Cde 1.gif',
    'assets/Jewellery 1.gif',
    'assets/safety 1.png',
    'assets/send-mail.png',
    'assets/Spin 1.gif',
    'assets/send-money 2.png',
    'assets/Pay-Bill 1.gif',
    'assets/manual-book.png',
  ];

  final List<String> labels = [
    'Gold',
    'Scan & Pay',
    'Jewellery',
    'Insurance',
    'Refer & Earn',
    'Spin Win',
    'Send Money',
    'Recharge & Bill',
    'PassBook',
  ];

  Grid1view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(3, (rowIndex) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(3, (colIndex) {
              final index = rowIndex * 3 + colIndex;
              if (index >= imagePaths.length) {
                return Container(
                  color: Colors.white,
                );
              }
              return Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 197, 197, 197),
                        offset: Offset(10, 10),
                        blurRadius: 40,
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-10, -10),
                        blurRadius: 20,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Column(
                        children: [
                          Center(
                            child: Image.asset(
                              imagePaths[index],
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            labels[index],
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
