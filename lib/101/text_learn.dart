import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// NOTLAR
//3 ŞEKİLDE PROPER TANIMLANABİLİR
//EN ALTA İNERSİN CLASS İLE TANIMLARSIN
//THEME OF İLE TEMADAN ÇEKERSİN, DEĞİŞTİRMEK İSTEDİĞİNİ COPYWİTH YAPARSIN AMA NULL OLMAMASI GEREK BİR ÖNCEKİNE ! EKLEMEYİ UNUTMA
//MANUEL OLARAK WIDGETDA TANIMLARSIN

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Eray";
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(keys.baslik),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ("$name ${name.length} Buy The Best One " * 10),
            maxLines: 2,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.right,
            style: ProjectStyles.buyTheOneStyle,
          ),
          Text(
            ("$name ${name.length} Buy The Best One " * 10),
            maxLines: 2,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: ProjectColor.projeLarge),
          ),
          Text(userName ??
              ''), // BURADA EĞER NULL OLUP PATLAR DİYE CHECK EDİP BOŞLUK KOYDUK
          Text(keys.welcome),
          Text('data'),
          CupertinoButton(child: Text(keys.baslik), onPressed: () {}),
          TextButton(onPressed: () {}, child: Text(keys.welcome))
        ],
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle buyTheOneStyle = const TextStyle(
      wordSpacing: 2,
      fontSize: 16,
      decoration: TextDecoration.overline,
      color: Colors.red,
      letterSpacing: 2,
      fontWeight: FontWeight.w600);
}

class ProjectColor {
  static Color projeLarge = Colors.deepPurple;
}

class ProjectKeys {
  final String welcome = "Merhaba";
  final String baslik = "Text Title";
}
