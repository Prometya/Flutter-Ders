import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {
  const ImageLearnView({Key? key}) : super(key: key);
  final String _imageNetwork =
      'https://i.ytimg.com/vi/U1dtuZY1ChQ/maxresdefault.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Image Learn"),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 400,
              width: 400,
              child: PngAssetsWidget(pngYolu: resimAdresleri.resimKitap),
            ),
            Image.network(_imageNetwork,
                errorBuilder: (context, error, stackTrace) => Icon(
                      Icons.downloading_outlined,
                      size: 400,
                    )
                //PngAssetsWidget(pngYolu: resimAdresleri.resimKitap),
                ),
          ],
        ));
  }
}

class PngAssetsWidget extends StatelessWidget {
  const PngAssetsWidget({Key? key, required this.pngYolu}) : super(key: key);

  final String pngYolu;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _namePngPrefix,
      fit: BoxFit.cover,
    );
  }

  String get _namePngPrefix => "assets/png/$pngYolu.png";
}

class resimAdresleri {
  static String resimKitap =
      "pngtree-book-stack-multiple-books-png-image_5836805";
}
