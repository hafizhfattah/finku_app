import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Color
const scaffoldbg = Color.fromRGBO(255, 253, 255, 1);
const black = CupertinoColors.black;
const grey = CupertinoColors.systemGrey;
const primary = Color.fromRGBO(4, 89, 209, 1);
final secondary = Colors.grey[200]!;
const youngblue = Color.fromRGBO(223, 242, 254, 1);
final borderblue = Colors.blue[200]!;
const white = CupertinoColors.white;
const activetab = Color.fromRGBO(182, 215, 253, 1);
const green = Color.fromRGBO(82, 167, 111, 1);
const greenold = Color.fromRGBO(67, 138, 88, 1);
const greenbg = Color.fromRGBO(175, 227, 201, 1);
const textgreen = Color.fromRGBO(35, 78, 45, 1);
const red = Color.fromRGBO(232, 63, 51, 1);
const textpurple = Color.fromRGBO(61, 30, 90, 1);
const purplebg = Color.fromRGBO(233, 215, 229, 1);
const orange = CupertinoColors.systemOrange;
const cream = Color.fromRGBO(253, 235, 181, 1);
const textbrown = Color.fromRGBO(179, 126, 42, 1);

//List
List<String> images = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
  "https://wallpaperaccess.com/full/2637581.jpg"
];

//Methode
AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(images[pagePosition]),
        ],
      ),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          shape: BoxShape.circle),
    );
  });
}
