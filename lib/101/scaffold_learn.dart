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
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              final theme = Theme.of(context);
              return Wrap(children: [
                ListTile(title: Text("Wrap Tile 1")),
                ListTile(title: Text("Wrap Tile 1")),
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle),
                  ),
                )
              ]);
            },
          );
        },
        child: Icon(Icons.access_alarm_outlined, size: 45),
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
