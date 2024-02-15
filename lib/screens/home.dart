import 'package:flutter/material.dart';
import 'package:islamic/screens/tabs/hadeth_tab.dart';
import 'package:islamic/screens/tabs/quran_tab.dart';
import 'package:islamic/screens/tabs/radio_tab.dart';
import 'package:islamic/screens/tabs/sebha_tab.dart';
import 'package:islamic/screens/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index =0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.fill
          )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Islami",),),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")), label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")), label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")), label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            ]),
        body: tabs[index],
      ),
    );
  }
  List<Widget> tabs=[
    RadioTab(),
    SebhaTab(),
    HadethTab(),
    QuranTab(),
    SettingsTab(),
  ];
}
