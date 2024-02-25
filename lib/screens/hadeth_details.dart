import 'package:flutter/material.dart';
import 'package:islamic/models/hadeth_model.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:provider/provider.dart';
class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadethDetails';
  const HadethDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Stack(children: [
      Image.asset(
        provider.getBgImagePath(),
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            model.title,
          ),
        ),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  model.content[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                );
              },
              itemCount: model.content.length, separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 3,
                  color: Theme.of(context).backgroundColor,
                );
            },
            ),
          ),
        ),
      ),
    ]);
  }
}
