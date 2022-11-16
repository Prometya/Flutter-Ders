import 'package:flutter/material.dart';

class ContainerSizedBoxLearnView extends StatelessWidget {
  ContainerSizedBoxLearnView({Key? key}) : super(key: key);
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //CrossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(keys.karsilama),
          ],
        ),
      ),
    );
  }
}

class ProjectKeys {
  final String karsilama = "Merhaba";
}
