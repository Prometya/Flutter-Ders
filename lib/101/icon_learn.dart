import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final String _title = "Icon Learn";
  final IconColorTanimla colorSec = IconColorTanimla();
  final IconSizeTanimla sizeSec = IconSizeTanimla();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.beenhere_outlined,
                color: Theme.of(context)
                    .backgroundColor, // Kullanımda theme den renk çekersen dark/light modunda renkler otomatik değişir. Aksi halde senin atadığın renk kalır.
                size: sizeSec.iconSizeOrta),
            IconButton(
                color: colorSec.iconColorFruze,
                iconSize: sizeSec.iconSizeBuyuk,
                onPressed: () {},
                icon: Icon(Icons.account_circle_rounded))
          ],
        ));
  }
}

class IconSizeTanimla {
  final double iconSizeBuyuk = 100;
  final double iconSizeOrta = 50;
}

class IconColorTanimla {
  final Color iconColorFruze = Color(0xffED617A);
}
