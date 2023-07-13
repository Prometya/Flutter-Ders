import 'package:flutter/material.dart';
import 'package:untitled1/core/random_image_generator.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({Key? key}) : super(key: key);
  final String _tileTitle = "England Won The Match";
  final String _tileSubTitle =
      "England won Iran due to 8-2 end of the match. What a lot of goal in the match. Great game for England";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Tile'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                color: Colors.transparent,
                child: ListTile(
                  onTap: () {},
                  title: RandomImageGenerator(),
                  //contentPadding: EdgeInsets.zero,
                  subtitle: Text(_tileSubTitle),
                  leading: const Padding(
                    padding: EdgeInsets.only(top: 45),
                    child: Icon(
                      Icons.beenhere_outlined,
                      size: 45,
                    ),
                  ),
                  trailing: Container(
                      // Eğer bir kompenentin nereleri kapladığını bilmiyorsan Container ile sarmala ve Colors.red ver.
                      color: Colors.red,
                      child: const Padding(
                        padding: EdgeInsets.only(top: 45),
                        child:
                            SizedBox(child: Icon(Icons.chevron_right_outlined)),
                      )),
                ),
              ),
            ),
          ],
        ));
  }
}
