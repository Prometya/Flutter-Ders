import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scaffold Learn")),
      drawer: Drawer(
        key: key,
      ),
      body: const Column(),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              final theme = Theme.of(context);
              return Wrap(children: [
                const ListTile(title: Text("Wrap Tile 1")),
                const ListTile(title: Text("Wrap Tile 1")),
                Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle),
                  ),
                )
              ]);
            },
          );
        },
        child: const Icon(Icons.access_alarm_outlined, size: 45),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_sharp), label: "a"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: "b")
        ],
      ),
    );
  }
}
