import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      alignment: Alignment.center,
      color: Colors.amber,
      child: const Text("Experience part"),
    );
  }
}
