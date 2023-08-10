import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DeepLink2 extends StatelessWidget {
  const DeepLink2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("deeplink page 2"),
      ),
      body: Center(child: Column(
        children: const [
          Text("You reached to deeplink page 2!"),
        ],
      )),
    );
  }
}
