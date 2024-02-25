import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab>
    with SingleTickerProviderStateMixin {
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
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    setRotation(degrees);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void setRotation(int degrees) {
    final angle = degrees * pi / 180;
    animation = Tween<double>(begin: 0, end: angle).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 73.0),
                    child: AnimatedBuilder(
                      animation: animation,
                      child: Image.asset(provider.getSebhaBodyPath()),
                      builder: (context, child) =>
                          Transform.rotate(angle: animation.value, child: child),
                    ),
                  ),
                  Image.asset(provider.getSebhaHeadPath()),
                ],
              )),
          Text(AppLocalizations.of(context)!.tsbeehNum, style: Theme.of(context).textTheme.bodyLarge),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).backgroundColor,
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
                    controller.forward(from: counter.toDouble());
                  }
                  setState(() {});
                },
                child: Text("$counter",
                    style: Theme.of(context).textTheme.titleMedium)),
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).backgroundColor,
            ),
            child: Text("${tsbeehName[index]}",
                style: Theme.of(context).textTheme.titleMedium),
          ),
        ],
      ),
    );
  }
}
