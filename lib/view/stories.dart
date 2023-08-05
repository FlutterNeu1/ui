import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String imagePath;

  ImagePage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/farmer.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 30,
            right: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                      "assets/ion_notifications-circle-outline.png")),
            ),
          ),
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/iStock-1213534929 1.png',
    'assets/03-Enjoy 8.png',
    'assets/image 5.png',
    'assets/Group 243378.png',
    'assets/update-process 1.png',
    'assets/image6.png',
  ];

  Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 100,
        child: ListView.builder(
          itemCount: imagePaths.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            if (index < 2) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ImagePage(imagePath: imagePaths[index]),
                    ),
                  );
                },
                child: buildStoryItem(imagePaths[index]),
              );
            } else {
              return buildStoryItem(imagePaths[index]);
            }
          },
        ),
      ),
    );
  }

  Widget buildStoryItem(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        child: CircleAvatar(
          radius: 30,
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
