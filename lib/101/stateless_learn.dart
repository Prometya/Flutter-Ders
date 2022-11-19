import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateless Learn'),
        ),
        body: Column(
          children: <Widget>[
            ErayTitleTextWidget(
              metin:
                  "Ali", //Metin yazdık ve custom widget ımızdan uygulamada göstermiş olduk
            ),
            ErayTitleTextWidget(
              metin: "Veli",
            ),
            ErayTitleTextWidget(
              metin: "4950",
            ),
            ErayContainer()
          ],
        ));
  }
}

class ErayContainer extends StatelessWidget {
  const ErayContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: SizedBox(
        height: 400,
        width: 400,
      ),
    );
  }
}

class ErayTitleTextWidget extends StatelessWidget {
  //Kendi widgetımızı oluşturduk
  const ErayTitleTextWidget({Key? key, required this.metin})
      : super(key: key); //Nullable olmaması için required kullandık
  final String metin; // atanması gereken metin olduğunu belirttik
  @override
  Widget build(BuildContext context) {
    return Text(
      metin, //metin i de buna istinaden aldı
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
