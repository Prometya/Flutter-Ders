import 'package:flutter/material.dart';

class TextLearnView extends StatefulWidget {
  const TextLearnView({Key? key}) : super(key: key);
  final String names = 'Veli';
  @override
  _TextLearnViewState createState() => _TextLearnViewState();
}

class _TextLearnViewState extends State<TextLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ali'),
      ),
      body: Text(
        'Tester' * 10,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        selectionColor: Colors.amber,
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(color: Colors.amber[900]),
        //TODO: Bu aşağısı (class ile verileri ayırdığımız yer)ile theme of aynı anda kullanılamaz.
        //ProjectStyles.welcomeStyle,
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      color: Colors.amber,
      fontSize: 10.0,
      decoration: TextDecoration.underline);
}
