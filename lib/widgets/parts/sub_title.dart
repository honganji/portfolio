import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String sub_title;
  const SubTitle(this.sub_title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      sub_title,
      style: const TextStyle(
        fontSize: 50,
        decoration: TextDecoration.underline,
      ),
    );
  }
}
