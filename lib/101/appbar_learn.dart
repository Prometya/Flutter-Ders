import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _title = "Welcome Learn";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        //backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle
            .light, // burası var ya burası çok ince nokta. Appbar üzerinden status barın rengini değiştiriyorsun
        elevation:
            0, // sıfır atayınca body ve appbar birmiş gibi gözükür. Ama color transparent olacak tabii ki
        centerTitle:
            true, // Bunu true yapmazsan androidde soldan başlar, ios da ortadan başlar
        leading: Icon(Icons.arrow_back_rounded),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
          Center(child: CircularProgressIndicator())
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
