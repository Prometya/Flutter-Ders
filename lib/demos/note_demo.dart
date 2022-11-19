import 'package:flutter/material.dart';

class NoteDemo extends StatelessWidget {
  const NoteDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Image.asset(
                "assets/png/pngtree-book-stack-multiple-books-png-image_5836805.png"),
            Text("Create Your First Note"),
            Text("Add a note" * 20),
            SizedBox(
              height: 200,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Create A Note")),
            TextButton(onPressed: () {}, child: Text("Import Notes")),
          ],
        ),
      ),
    );
  }
}
