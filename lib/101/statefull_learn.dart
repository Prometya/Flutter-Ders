import 'package:flutter/material.dart';

class StatefullLearnView extends StatefulWidget {
  const StatefullLearnView({Key? key}) : super(key: key);

  @override
  State<StatefullLearnView> createState() => _StatefullLearnViewState();
}

class _StatefullLearnViewState extends State<StatefullLearnView> {
  int counter = 0;

  void incrementValue() {
    setState(() {
      counter = counter + 1;
    });
  }

  void deincrementValue() {
    setState(() {
      counter = counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull Learn'),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: _plusActionButton(),
          ),
          _minusActionButton(),
        ],
      ),
      body: Center(
          child: Text(
        counter.toString(),
        style: Theme.of(context)
            .textTheme
            .headline3
            ?.copyWith(fontWeight: FontWeight.w700),
      )),
    );
  }

  FloatingActionButton _minusActionButton() {
    return FloatingActionButton(
      onPressed: () {
        deincrementValue();
      },
      child: Icon(Icons.exposure_minus_1_outlined, size: 32),
    );
  }

  FloatingActionButton _plusActionButton() {
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: Icon(Icons.plus_one_outlined, size: 32),
    );
  }
}
