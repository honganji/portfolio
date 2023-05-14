import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Experience",
          style: TextStyle(
            fontSize: 35,
            decoration: TextDecoration.underline,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: const Text(
                "2022-PRESENT",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Blockchain Engineer",
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                Text(
                  r"""I develop applications with smart contract using
Solidity, Javascript, Dart, Rust and make texts how 
to make these applications. Also I maintain these
application and text.""",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
