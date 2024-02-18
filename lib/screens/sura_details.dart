import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/models/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetails';
  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(model.index);
    }
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/bg.png"),
    fit: BoxFit.fill
    )),
    child: Scaffold(
      appBar: AppBar(
        title: Text(model.name),
      ),
      body: Card(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        color: Colors.white.withOpacity(.7),
        elevation: 20,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.transparent)
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              verses[index],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            );
          },
          itemCount: verses.length,
        ),
      ),
    ));
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
  }
}
