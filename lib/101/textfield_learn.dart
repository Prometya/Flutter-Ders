import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbarTitle'),
        ),
        body: Column(
          children: [TextField(
                maxLength: 100,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                autofillHints:  [AutofillHints.email],
                decoration: InputDecoration(prefixIcon: Icon(Icons.mail_lock_rounded),
                border: OutlineInputBorder(),
                  labelText: "E-mail",
                ),
              ),
            TextFormField(minLines: 2,
            maxLines: 4,

            ),
          ],
        ),
    );
  }
}
