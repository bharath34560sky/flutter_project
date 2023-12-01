import 'package:flutter/material.dart';

class ImageDetails extends StatefulWidget {
  const ImageDetails({super.key, required this.key1});

  final int key1;

  @override
  State<ImageDetails> createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  List images = [
    "images/beet.jpg",
    "images/broccoi.jpg",
    "images/cauliflower.jpg",
    "images/garlic.jpg",
    "images/lettuce.jpg",
    "images/onions.jpg",
    "images/tomatoes.jpg",
    "images/turnips.jpg",
  ];

  List<String> imageName = [
    "beet",
    "broccoi",
    "cauliflower",
    "garlic",
    "lettuce",
    "onions",
    "tomatoes",
    "turnips"
  ];
  //int currentIndex=widget.key1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(imageName[widget.key1]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(images[widget.key1]),
          SizedBox(
            height: 25,
          ),
          Text(
            imageName[widget.key1],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
