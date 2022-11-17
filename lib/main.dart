import 'package:flutter/material.dart';
import 'package:untitled1/100/scaffold_learn.dart';

//Veli babaaaaaa BÜYÜKSÜN :)
//Bu sefer olacak İnşallah. Sen beni bıraksan da ben seni bu sefer
// bırakmayacağım Flutter
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dersler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScaffoldLearnView(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   final String baba = "Ali";
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Deneme"),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: const <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Drawer Header',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.message),
//               title: Text('Mesajlar'),
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('Profile'),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Container(width: 100, height: 100, color: Colors.red),
//             Container(width: 50, height: 50, color: Colors.amber[600]),
//             Container(width: 25, height: 200, color: Colors.green),
//             Container(width: 50, height: 100, color: Colors.amber[200]),
//             Container(
//               width: 75,
//               height: 54,
//               color: Colors.black,
//             ),
//             FloatingActionButton(
//               backgroundColor: Colors.pinkAccent,
//               elevation: 0,
//               heroTag: const Text('btn1'),
//               tooltip: 'Aumentar',
//               child: const Icon(
//                 Icons.add,
//                 color: Colors.black,
//                 size: 30,
//               ),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
