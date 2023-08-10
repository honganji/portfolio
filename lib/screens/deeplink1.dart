import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DeepLink1 extends StatelessWidget {
  const DeepLink1({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("deeplink1 page"),
      ),
      body: Center(child: Column(
        children: const [
          Text("You reached to deeplink1 page!"),
        ],
      )),
    );
  }
}
