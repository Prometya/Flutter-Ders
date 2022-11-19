import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Padding Learn'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.alarm_add_outlined))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
              Padding(
                padding: ErayProjePadding.ilkPadding,
                child: Container(
                  child: Text(
                    "Lorem baba naber" * 250,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  height: 200,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 200,
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}

class ErayProjePadding {
  static const ilkPadding = EdgeInsets.only(bottom: 20);
}
