import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/models/hadeth_model.dart';
import 'package:islamic/screens/hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  HadethTab({Key? key}) : super(key: key);

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset("assets/images/hadeth_logo.png")),
        Divider(
          thickness: 3,
          color: Theme.of(context).backgroundColor,
        ),
        Text(AppLocalizations.of(context)!.ahadeth,
            style: Theme.of(context).textTheme.bodyLarge),
        Divider(
          thickness: 3,
          color: Theme.of(context).backgroundColor,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                      arguments: allHadeth[index]);
                },
                child: Text(allHadeth[index].title.trim(),
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center),
              );
            },
            itemCount: allHadeth.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                thickness: 1,
                color: Theme.of(context).backgroundColor,
                endIndent: 50,
                indent: 50,
              );
            },
          ),
        )
      ],
    );
  }

  loadHadethFile() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        String title = hadethLines[0];
        print(title);
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(title, content);
        allHadeth.add(hadethModel);
      }
      setState(() {});
    });
  }
}
