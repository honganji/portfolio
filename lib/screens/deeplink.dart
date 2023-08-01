import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DeepLink extends StatelessWidget {
  const DeepLink({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("deeplink page"),
      ),
      body: Center(child: Column(
        children: [
          const Text("You reached to deeplink page!"),
          Text("Deeplink URL: \nhttps://yujitoshi.com/$path/")
        ],
      )),
    );
  }
}
