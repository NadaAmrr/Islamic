import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/models/sura_model.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:islamic/provider/sura_det_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'SuraDetails';
  SuraDetailsScreen({super.key});

  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    return ChangeNotifierProvider<SuraDetProvider>(
      create: (BuildContext context) {
        return SuraDetProvider()..loadFile(model.index);
      },
      builder: (context, child) {
        var provider2 = Provider.of<SuraDetProvider>(context);
        return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(provider.getBgImagePath()),
                    fit: BoxFit.fill)),
            child: Scaffold(
              appBar: AppBar(
                title: Text(model.name),
              ),
              body: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Text(
                        provider2.verses[index].trim(),
                        textAlign: provider.langCode == "en"
                            ? TextAlign.end
                            : TextAlign.start,
                        style: Theme.of(context).textTheme.bodySmall,
                      );
                    },
                    itemCount: provider2.verses.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return
                          // Icon(Icons.play_arrow);
                          Divider(
                        thickness: 3,
                        color: Theme.of(context).backgroundColor,
                      );
                    },
                  ),
                ),
              ),
            ));
      },
    );
  }
}
