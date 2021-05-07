import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String body;
  final String title;

  static const double fontSize = 16;

  TextSection({this.body, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              fontSize, fontSize * 2, fontSize, fontSize * 0.25),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(
              fontSize, fontSize * 0.625, fontSize, fontSize),
          child: Text(
            body,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        )
      ],
    );
  }
}
