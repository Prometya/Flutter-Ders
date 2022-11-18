import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text("PLACE A BID"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Data")),
              ElevatedButton(
                  onPressed: null,
                  child: Text("Data")), // TIKLANAMASIN DERSEN null
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.accessibility_new_outlined)),
              FloatingActionButton(
                  child: Icon(
                    Icons.add,
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              InkWell(
                onTap: () {},
                child: const Text("data"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Data"),
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.account_circle_outlined),
                  label: Text("Merhaba Dünya")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 15, left: 30, right: 30),
                    child: Text("Place Bid"),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120, right: 120),
                    child: Text("Choose a Place"),
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.white;
                        }
                      },
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Choose a Place")),
              // ElevatedButton.styleFrom(
              //     backgroundColor: Colors.blueAccent,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(50))),
              // onPressed: () {},
              // child: Padding(
              //   padding: const EdgeInsets.only(left: 120, right: 120),
              //   child: Text("Choose a Place"),
              // )),
            ],
          ),
        ));
  }
}
