import 'package:flutter/material.dart';
import 'package:portfolio/widgets/parts/sub_title.dart';

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
        const SubTitle("Experience"),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                "2022-PRESENT",
                style: TextStyle(fontSize: 30),
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
                    fontSize: 40,
                  ),
                ),
                Text(
                  r"""I develop applications with smart contract using
Solidity, Javascript, Dart, Rust and make texts how 
to make these applications. Also I maintain these
application and text.""",
                  style: TextStyle(
                    fontSize: 25,
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
