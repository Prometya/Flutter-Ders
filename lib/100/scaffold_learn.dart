import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold Learn")),
      drawer: Drawer(
        key: key,
      ),
      body: Column(),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.white,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: "a"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: "b")
        ],
      ),
    );
  }
}
