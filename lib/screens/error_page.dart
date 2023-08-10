import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ErrorPage page"),
      ),
      body: Center(child: Column(
        children: const [
          Text("エラーが発生しました。\nこのURLは存在しません。"),
        ],
      )),
    );
  }
}
