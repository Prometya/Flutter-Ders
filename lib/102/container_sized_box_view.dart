import 'package:flutter/material.dart';

class ContainerSizedBoxView2 extends StatelessWidget {
  const ContainerSizedBoxView2({Key? key}) : super(key: key);
  final String boxMesaj = 'Box Burası BOX!!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Sized Box'),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 150,
              width: 300,
              child: Container(
                //color: Colors.white,
                decoration: BoxDecoration(
                    border: Border.all(width: 10.0),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        blurStyle: BlurStyle.solid,
                        offset: Offset(15, 15),
                        color: Colors.black45,
                        blurRadius: 20,
                      )
                      //spreadRadius: 3)
                    ]),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    boxMesaj,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        shadows: [
                          Shadow(color: Colors.red, offset: Offset(5, 5)),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
