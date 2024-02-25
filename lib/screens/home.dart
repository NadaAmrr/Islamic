import 'package:flutter/material.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:islamic/screens/tabs/hadeth_tab.dart';
import 'package:islamic/screens/tabs/quran_tab.dart';
import 'package:islamic/screens/tabs/radio_tab.dart';
import 'package:islamic/screens/tabs/sebha_tab.dart';
import 'package:islamic/screens/tabs/settings_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBgImagePath()),
              fit: BoxFit.fill
          )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.appName,),),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic_radio.png")), label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")), label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png")), label: ""),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic_quran.png")), label: ""),
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
