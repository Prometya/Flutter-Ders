import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          ("Buy The Best One" * 10),
          maxLines: 2,
          overflow: TextOverflow.fade,
          textAlign: TextAlign.right,
          style: TextStyle(
              wordSpacing: 2,
              fontSize: 16,
              decoration: TextDecoration.overline,
              color: Colors.deepPurple,
              letterSpacing: 2,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
