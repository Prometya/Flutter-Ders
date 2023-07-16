import 'package:flutter/material.dart';

// Bu sınıf, Text widget'larını kullanarak bir öğrenme deneyimi sunar.
class TextLearnView extends StatelessWidget {
// Constructor.
  TextLearnView({Key? key, this.userName}) : super(key: key);
// String name.
// Bu, widget'ın başlığında görüntülenecek addır.
  final String name = 'veli';

// String? userName.
// Bu, kullanıcının adını alır.
  final String? userName;

// ProjectKeys keys.
// Bu, uygulamanın metinlerini tutan bir sınıftır.
  final ProjectKeys keys = ProjectKeys();

// Widget build(BuildContext context).
// Bu, widget'ın görünümünü tanımlar.
  @override
  Widget build(BuildContext context) {
// Scaffold.
// Bu, widget'ın gövdesini kaplayan bir Scaffold widget'ı döndürür.
    return Scaffold(
// body.
// Bu, widget'ın gövdesini tanımlar.
      body: Center(
          child: Column(
// mainAxisAlignment.
// Bu, widget'ın ana eksenini ayarlar.
        mainAxisAlignment: MainAxisAlignment.center,
// children.
// Bu, widget'ın children'larını tanımlar.
        children: [
// Text.
// Bu, widget'ın başlığını görüntüler.
          Text(
            'Welcome $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: const TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                color: Colors.lime,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
// Text.
// Bu, widget'ın ikinci metnini görüntüler.
          Text(
            'Hello $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles.welcomeStyle,
          ),
// Text.
// Bu, widget'ın üçüncü metnini görüntüler.
          Text(
            'Hello $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: ProjectColors.welcomeColor),
          ),
// Text.
// Bu, widget'ın kullanıcı adını görüntüler.
          Text(userName ?? ''),
// Text.
// Bu, widget'ın Merhaba metnini görüntüler.
          Text(keys.welcome),
        ],
      )),
    );
  }
}

// ProjectStyles.
// Bu sınıf, Text widget'ları için stil tanımlar.
class ProjectStyles {
// static TextStyle welcomeStyle.
// Bu, widget'ın ikinci metni için stil tanımlar.
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      color: Colors.lime,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

// ProjectColors.
// Bu sınıf, widget'ların renklerini tanımlar.
class ProjectColors {
// static Color welcomeColor.
// Bu, widget'ın üçüncü metninin rengini tanımlar.
  static Color welcomeColor = Colors.red;
}

// ProjectKeys.
// Bu sınıf, widget'ların metinlerini tanımlar.
class ProjectKeys {
// final String welcome.
// Bu, widget'ın Merhaba metnini tanımlar.
  final String welcome = "Merhaba";
}
