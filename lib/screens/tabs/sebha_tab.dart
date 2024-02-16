import 'package:flutter/material.dart';
import 'package:islamic/theme/theme.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  List<String> tsbeehName = [
    "سبحان الله",
    "الحمدلله",
    "لا إله إلا الله",
    "الله أكبر",
    "لا حول و لا قوة إلا بالله"
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              // color: Colors.black,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      child: Image.asset("assets/images/head_sebha_logo.png")),
                  Container(
                      child: Image.asset("assets/images/body_sebha_logo.png")),
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
                  if (counter == 31) {
                    index++;
                    if (index == tsbeehName.length) {
                      index == 0;
                    }
                    counter = 0;
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
