import 'package:flutter/material.dart';
import 'package:portfolio/widgets/parts/sub_title.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 60,
        ),
        SubTitle("Skills"),
        SizedBox(
          height: 15,
        ),
        Text(
          "• Flutter",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "• React",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "• Next.js",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "• Hardhat(Solidity)",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
