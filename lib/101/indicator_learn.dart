import 'package:flutter/material.dart';

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({Key? key}) : super(key: key);
  final String _appBarTitle = "Merhaba";
  final Color _indikator = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: LinearProgressIndicator(
            color: _indikator,
          ),
          title: Text(_appBarTitle),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ProgressBarOrta(indikator: _indikator),
          ],
        ));
  }
}

class ProgressBarOrta extends StatelessWidget {
  const ProgressBarOrta({
    Key? key,
    required Color indikator,
  })  : _indikator = indikator,
        super(key: key);

  final Color _indikator;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: _indikator,
      value: 0.3,
      strokeWidth: 10,
      backgroundColor: Colors.amber,
    ));
  }
}
