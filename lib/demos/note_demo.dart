import 'package:flutter/material.dart';

class NoteDemo extends StatelessWidget {
  const NoteDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding().buildEdgeInsetsHorizantal(),
        child: Column(
          children: <Widget>[
            Image.asset(
                "assets/png/pngtree-book-stack-multiple-books-png-image_5836805.png"),
            NoteDemoText(),
            Text(Metinler().data2),
            Spacer(),
            ElevatedButton(
                onPressed: () {}, child: Text(Metinler().ElevatedButtonText)),
            TextButton(onPressed: () {}, child: Text("Import Notes")),
            //TextButton(onPressed: () {}, child: Text("Merhaba")),
          ],
        ),
      ),
    );
  }
}

class Metinler {
  String get ElevatedButtonText => "Create A Note";

  String get data2 => "Add a note" * 20;

  String get data => "Create Your First Note";
}

class ProjectPadding {
  EdgeInsets buildEdgeInsetsVertical() =>
      const EdgeInsets.symmetric(vertical: 20);
  EdgeInsets buildEdgeInsetsHorizantal() =>
      const EdgeInsets.symmetric(horizontal: 20);
}

class NoteDemoText extends StatelessWidget {
  const NoteDemoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Metinler().data,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}
