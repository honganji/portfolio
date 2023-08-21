import 'package:flutter/material.dart';

class DeepLinkPageTwo extends StatelessWidget {
  const DeepLinkPageTwo({this.name, super.key});
  final name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Universal Link2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("URLクエリパラメータを使用したページ遷移"),
            Text(name),
          ],
        )
      ),
    );
  }
}
