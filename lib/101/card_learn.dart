import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card Learn'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ErayCard(child: Text("adad"))],
          ),
        ));
  }
}

class ErayCard extends StatelessWidget {
  ErayCard({Key? key, this.metin, required this.child}) : super(key: key);
  final String? metin;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: ErayProjectMargin.projeMargin,
        color: Theme.of(context).errorColor,
        shape: StadiumBorder(
          side: BorderSide(color: Colors.black87),
        ),
        child: Container(
          height: 50,
          width: 250,
          child: child,
        ));
  }
}

class ErayProjectMargin {
  static const projeMargin = EdgeInsets.all(20);
}
