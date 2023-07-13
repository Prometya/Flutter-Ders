import 'package:flutter/material.dart';

class TextLearnView102 extends StatelessWidget {
  const TextLearnView102({Key? key}) : super(key: key);
  final String metinAltSolaDayali = 'Veli Dayı';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Action Button',
              ),),
        ],
      ),
      body: Text(
        'Merhaba $metinAltSolaDayali' * 100,
        style: StyleProperties.sitilim,
        maxLines: 10,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class StyleProperties {
  static TextStyle sitilim = const TextStyle(
    color: Colors.amberAccent,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.bold,
  );
}
