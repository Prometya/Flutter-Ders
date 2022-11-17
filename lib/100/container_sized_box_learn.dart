import 'package:flutter/material.dart';

class ContainerSizedBoxLearnView extends StatelessWidget {
  ContainerSizedBoxLearnView({Key? key}) : super(key: key);
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text(keys.karsilama * 100),
          ),
          SizedBox.shrink(), // BOŞLUK OLSUN İSTERSEN BUNU KOY
          SizedBox.square(
            dimension: 50,
            child: Text(keys.karsilama * 50),
          ),
          Container(
            height: 100,
            //color: ProjectRenkler.renkAna,
            constraints:
                BoxConstraints(maxWidth: 150, minWidth: 50, maxHeight: 100),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(25),
            decoration: ProjectBoxDecoration(),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   color: ProjectRenkler.renkYedek,
            //   gradient: RadialGradient(
            //       colors: [ProjectRenkler.renkAna, ProjectRenkler.renkYedek]),
            //   boxShadow: [
            //     BoxShadow(
            //       color: ProjectRenkler.renkAna,
            //       blurStyle: BlurStyle.solid,
            //       blurRadius: 1,
            //       offset: Offset(5, 2),
            //     ),
            //   ],
            //   border: Border.all(
            //       color: ProjectRenkler.renkAna, style: BorderStyle.solid),
            //   // gradient: LinearGradient(
            //   //     colors: [ProjectRenkler.renkAna, ProjectRenkler.renkYedek]),
            // ),
          ),
        ],
      ),
    );
  }
}

class ProjectKeys {
  final String karsilama = "Merhaba";
}

class ProjectRenkler {
  static Color renkAna = Colors.black;
  static Color renkYedek = Colors.yellow;
}

class ProjectBoxDecorationNormal {
  static BoxDecoration boxDecorationNormal = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: ProjectRenkler.renkYedek,
    gradient: RadialGradient(
        colors: [ProjectRenkler.renkAna, ProjectRenkler.renkYedek]),
    boxShadow: [
      BoxShadow(
        color: ProjectRenkler.renkAna,
        blurStyle: BlurStyle.solid,
        blurRadius: 1,
        offset: Offset(5, 2),
      ),
    ],
    border: Border.all(color: ProjectRenkler.renkAna, style: BorderStyle.solid),
    // gradient: LinearGradient(
    //     colors: [ProjectRenkler.renkAna, ProjectRenkler.renkYedek]),
  );
}

class ProjectBoxDecoration extends BoxDecoration {
  ProjectBoxDecoration()
      : super(
          borderRadius: BorderRadius.circular(10),
          color: ProjectRenkler.renkYedek,
          gradient: RadialGradient(
              colors: [ProjectRenkler.renkAna, ProjectRenkler.renkYedek]),
          boxShadow: [
            BoxShadow(
              color: ProjectRenkler.renkAna,
              blurStyle: BlurStyle.solid,
              blurRadius: 1,
              offset: Offset(5, 2),
            ),
          ],
          border: Border.all(
              color: ProjectRenkler.renkAna, style: BorderStyle.solid),
          // gradient: LinearGradient(
          //     colors: [ProjectRenkler.renkAna, ProjectRenkler.renkYedek]),
        );
}
