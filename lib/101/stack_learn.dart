import 'package:flutter/material.dart';

class StackLearnView extends StatelessWidget {
  const StackLearnView({Key? key}) : super(key: key);
  final String _imageAdres = "https://picsum.photos/500";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Image.network(_imageAdres),
          // Positioned(
          //     height: 150,
          //     width: 150,
          //     top: 0,
          //     child: Container(
          //       color: Colors.blue,
          //     )),
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 50),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.purpleAccent),
              width: 300,
              height: 75,
              child: AppBar(
                title: Text("Sorunuz mu vardı?"),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.announcement_outlined,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
