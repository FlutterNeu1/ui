import 'package:flutter/material.dart';

class Gridview3 extends StatelessWidget {
  const Gridview3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildGridItem('Bills', 'assets/bill (3) 1.png'),
              _buildGridItem('Recharge', 'assets/smartphone (1) 1.png'),
              _buildGridItem('DTH', 'assets/antenna (1) 1.png'),
              _buildGridItem('Electricity', 'assets/bulb 1.png'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildGridItem('Internet', 'assets/no-wifi 1.png'),
              _buildGridItem('Postpaid', 'assets/no-wifi 1.png'),
              _buildGridItem('Postpaid', 'assets/faucet (1) 1.png'),
              _buildGridItem('View All', 'assets/Vector.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem(String text, String imagePath) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
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
            child: Image.asset(
              imagePath,
              width: 40,
              height: 40,
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontFamily: "Rubik"),
        ),
      ],
    );
  }
}
