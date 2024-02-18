import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamic/theme/theme.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> with SingleTickerProviderStateMixin{
  int counter = 0;
  List<String> tsbeehName = [
    "سبحان الله",
    "الحمدلله",
    "لا إله إلا الله",
    "الله أكبر",
    "لا حول و لا قوة إلا بالله"
  ];
  int index = 0;
  late AnimationController controller;
  late Animation<double> animation;
  int degrees = 0;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 700));
    setRotation(degrees);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  void setRotation(int degrees) {
    final angle = degrees * pi /180;
    animation = Tween<double>(begin: 0,end: angle).animate(controller);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AnimatedBuilder(
                    animation: animation,
                      child:  Image.asset("assets/images/sebha.png"),
                      builder: (context, child) =>
                          Transform.rotate(
                              angle: animation.value,
                              child: child),
                  )
                ],
              )),
          Text("عدد التسبيحات", style: Theme.of(context).textTheme.bodyMedium),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyThemeData.primaryColor,
            ),
            child: InkWell(
                onTap: () {
                  counter++;
                  if (counter == 34) {
                    index++;
                    if (index == tsbeehName.length) {
                      index = 0;
                    }
                    counter = 0;
                    degrees = 0;
                    setRotation(degrees);
                    controller.forward(from: counter.toDouble());
                  } else {
                    degrees = degrees + 10;
                    setRotation(degrees);
                    controller.forward(from: counter.toDouble() );
                  }
                  setState(() {});
                },
                child: Text("$counter")),
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MyThemeData.primaryColor,
            ),
            child: Text("${tsbeehName[index]}"),
          ),
        ],
      ),
    );
  }
}
