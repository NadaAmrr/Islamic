import 'package:flutter/material.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              alignment: Alignment.center,
              child: Image.asset("assets/images/radio_image.png")),
          Text(AppLocalizations.of(context)!.quranRadio, style: Theme.of(context).textTheme.bodyLarge),
          provider.langCode == "en"
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.skip_previous,
                      size: 50,
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                    Icon(
                      Icons.skip_next,
                      size: 50,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.skip_next,
                      size: 50,
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                    Icon(
                      Icons.skip_previous,
                      size: 50,
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
