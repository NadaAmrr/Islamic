import 'package:flutter/material.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:islamic/screens/sheets/lang_bottom_sheet.dart';
import 'package:islamic/screens/sheets/theme_bottom_sheet.dart';
import 'package:islamic/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.settings, style: Theme.of(context).textTheme.bodyLarge,),
          Divider(
            thickness: 3,
            color: Theme.of(context).backgroundColor,
          ),
          Text(AppLocalizations.of(context)!.lang, style: Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  isDismissible: true,
                  isScrollControlled: true,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * .5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Theme.of(context).backgroundColor),
                      child: LanguageBottomSheet(),
                    );
                  });
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: MyThemeData.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: provider.langCode == "en"
                      ? Text(AppLocalizations.of(context)!.en)
                      : Text(AppLocalizations.of(context)!.ar),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Text(AppLocalizations.of(context)!.theme, style: Theme.of(context).textTheme.bodyLarge,),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  isDismissible: true,
                  isScrollControlled: true,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * .5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Theme.of(context).backgroundColor,
                      ),
                      child: ThemeBottomSheet(),
                    );
                  });
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: MyThemeData.primaryColor)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: provider.theme == ThemeMode.light
                      ? Text(AppLocalizations.of(context)!.light)
                      : Text(AppLocalizations.of(context)!.dark),
                )),
          ),
        ],
      ),
    );
  }
}
