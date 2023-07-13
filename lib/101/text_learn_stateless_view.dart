import 'package:flutter/material.dart';

class TextLearnStatelessView extends StatelessWidget {
  const TextLearnStatelessView({Key? key}) : super(key: key);
  final String names = 'Veli Dayı';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Text(
        'Deneme $names',
        style: const TextStyle(color: Colors.amberAccent),
      ),
    );
  }
}
