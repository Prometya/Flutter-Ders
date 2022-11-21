import 'package:flutter/material.dart';
import 'package:untitled1/101/custom_widget.dart';
import 'package:untitled1/101/image_learn.dart';

class NoteDemoTekrar extends StatelessWidget {
  NoteDemoTekrar({Key? key}) : super(key: key);
  final String metinBaslik = "Create Your First Note";
  final String metinAciklama = "Add a note about anything" * 5;
  final String elevatedButtonMetin = "Create A Note";
  final String importMetin = "Import Notes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjePadding.horizantal,
        child: Column(
          children: <Widget>[
            PngAssetsWidget(pngYolu: resimAdresleri.resimKitap),
            Padding(
              padding: ProjePadding.vertical,
              child: BaslikMetin(metinBaslik: metinBaslik),
            ),
            metinAciklamaWidget(metinAciklama: metinAciklama),
            Spacer(),
            ProjeButton(elevatedButtonMetin: elevatedButtonMetin),
            TextButton(
                onPressed: () {},
                child: ImportButtonText(importMetin: importMetin)),
            CustomFootButton(
              title: metinBaslik,
              onPressed: () {},
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class metinAciklamaWidget extends StatelessWidget {
  const metinAciklamaWidget({
    Key? key,
    required this.metinAciklama,
  }) : super(key: key);

  final String metinAciklama;

  @override
  Widget build(BuildContext context) {
    return Text(
      metinAciklama,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black87),
    );
  }
}

class ImportButtonText extends StatelessWidget {
  const ImportButtonText({
    Key? key,
    required this.importMetin,
  }) : super(key: key);

  final String importMetin;

  @override
  Widget build(BuildContext context) {
    return Text(
      importMetin,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: Colors.blue[400]),
    );
  }
}

class ProjeButton extends StatelessWidget {
  const ProjeButton({
    Key? key,
    required this.elevatedButtonMetin,
  }) : super(key: key);

  final String elevatedButtonMetin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ButtonHeights.buttonNormalHeight,
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      25))), //Burayı tekrar et oturmamış!!!
          child: Center(
            child: Text(
              // Text e center verince sayfaya yayılır kaplar. Çok güzel oldu
              elevatedButtonMetin,
              style: Theme.of(context).textTheme.headline5?.copyWith(),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}

class ProjePadding {
  static EdgeInsets horizantal = EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets vertical = EdgeInsets.symmetric(vertical: 10);
}

class BaslikMetin extends StatelessWidget {
  const BaslikMetin({
    Key? key,
    required this.metinBaslik,
  }) : super(key: key);

  final String metinBaslik;

  @override
  Widget build(BuildContext context) {
    return Text(
      metinBaslik,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600),
    );
  }
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
