import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  ColorLearnView({Key? key}) : super(key: key);
  final ColorPicker eColorPicker = ColorPicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Text(
              "Test",
              style:
                  // TextStyle(color: eColorPicker.forestGreen),
                  Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Theme.of(context).errorColor),
            ),
          ],
        ));
  }
}

class ColorPicker {
  final Color forestGreen = Color(0x70228b22);
}
