import 'package:flutter/material.dart';

// Bu sınıf, SizedBox ve Container widget'larını kullanan bir StatelessWidget'dır.
class ConatinerSizedBoxLearn extends StatelessWidget {
  // Constructor.
  const ConatinerSizedBoxLearn({Key? key}) : super(key: key);

  // Widget'ı oluşturur.
  @override
  Widget build(BuildContext context) {
    // Scaffold widget'ı, bir AppBar ve bir Column gövdesiyle döndürür.
    return Scaffold(
      // AppBar.
      appBar: AppBar(),
      // Column.
      body: Column(
        // Children.
        children: [
          // SizedBox.
          // Bu widget, belirtilen genişlik ve yüksekliğe sahip bir boş kutu oluşturur.
          SizedBox(
            // Genişlik ve yükseklik.
            width: 300,
            height: 200,
            // Child.
            child: Text('a' * 500),
          ),
          // const SizedBox.shrink().
          // Bu widget, hiçbir şey içermeyen ve hiçbir yer kaplamayan bir boş kutu oluşturur.
          const SizedBox.shrink(),
          // SizedBox.square().
          // Bu widget, belirtilen boyuta sahip bir kare kutu oluşturur.
          SizedBox.square(
            // Boyut.
            dimension: 50,
            // Child.
            child: Text('b' * 50),
          ),
          // Container.
          // Bu widget, herhangi bir widget'ı bir kutu içinde kaplar ve ona stil verebilir.
          Container(
            // Constraints.
            // Bu widget'ın boyutunu ve şeklini sınırlar.
            constraints: const BoxConstraints(
              maxWidth: 200,
              minWidth: 100,
              minHeight: 10,
              maxHeight: 120,
            ),
            // Padding.
            // Bu widget'ın kenarlarına padding ekler.
            padding: const EdgeInsets.all(10),
            // Margin.
            // Bu widget'ın çevresindeki boşluğu ayarlar.
            margin: const EdgeInsets.all(10),
            // Dekorasyon.
            // Bu widget'a bir stil uygular.
            decoration: ProjectUtility.boxDecoraiton,
            // Child.
            // Bu widget'ın içindeki çocuk widget.
            child: Text('aa' * 100, maxLines: 2),
          )
        ],
      ),
    );
  }
}

// Bu sınıf, ProjectContainerDecoration widget'ını tanımlar.
class ProjectUtility {
  // Statik BoxDecoration değişkeni.
  // Bu, Container widget'ına uygulanacak stildir.
  static BoxDecoration boxDecoraiton = BoxDecoration(
    // BorderRadius.
    // Bu, widget'ın köşelerini yuvarlatır.
    borderRadius: BorderRadius.circular(10),
    // Gradient.
    // Bu, widget'a bir renk gradyanı uygular.
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    // BoxShadow.
    // Bu, widget'ın etrafına bir gölge uygular.
    boxShadow: const [
      BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
    ],
    // Border.
    // Bu, widget'ın etrafına bir kenar ekler.
    border: Border.all(width: 10, color: Colors.white12),
  );
}

// Bu sınıf, ProjectContainerDecoration widget'ının bir alt sınıfıdır.
class ProjectContainerDecoration extends BoxDecoration {
  // Constructor.
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ],
            border: Border.all(width: 10, color: Colors.white12));
}
