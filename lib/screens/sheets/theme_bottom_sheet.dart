import 'package:flutter/material.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:islamic/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class ThemeBottomSheet extends StatelessWidget {
  ThemeBottomSheet({super.key});
  bool isLight = true;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Text(AppLocalizations.of(context)!.chooseTheme, style: Theme.of(context).textTheme.titleMedium,),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.light,
                      style: TextStyle(
                          color: provider.theme == ThemeMode.light
                              ? MyThemeData.textLight
                              : MyThemeData.yellowColor,
                          fontSize: 30,
                          fontFamily: 'ElMessiri',
                          fontWeight: FontWeight.bold),
                    ),
                    provider.theme == ThemeMode.light
                        ? Icon(
                            Icons.done,
                            size: 30,
                            color: MyThemeData.textLight,
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.dark,
                      style: TextStyle(
                          color: provider.theme == ThemeMode.light
                              ? MyThemeData.primaryColor
                              : MyThemeData.textDark,
                          fontSize: 30,
                          fontFamily: 'ElMessiri',
                          fontWeight: FontWeight.bold),
                    ),
                    provider.theme == ThemeMode.light
                        ? SizedBox()
                        : Icon(
                            Icons.done,
                            size: 30,
                            color: MyThemeData.textDark,
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
