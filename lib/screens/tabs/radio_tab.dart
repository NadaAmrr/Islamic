
import 'package:flutter/material.dart';
import 'package:islamic/theme/theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                child: Image.asset("assets/images/radio_image.png")),
            Text("إذاعة القرآن الكريم"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.skip_previous, color: MyThemeData.primaryColor, size: 50,),
                Icon(Icons.play_arrow, color: MyThemeData.primaryColor, size: 50,),
                Icon(Icons.skip_next, color: MyThemeData.primaryColor, size: 50,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
