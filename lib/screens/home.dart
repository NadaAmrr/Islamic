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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Islami",
            style: TextStyle(
                color: Color(0xff242424),
                fontSize: 30,
                fontFamily: 'ElMessiri',
                fontWeight: FontWeight.bold),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xffb7935f),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            selectedItemColor: Color(0xff242424),
            unselectedItemColor: Colors.white,
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
