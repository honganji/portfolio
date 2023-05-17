import 'package:flutter/material.dart';
import 'package:portfolio/widgets/parts/framework.dart';
import 'package:portfolio/widgets/parts/sub_title.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            fontSize: 20,
          ),
        ),
        Text(
          "• React",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "• Next.js",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "• Hardhat(Solidity)",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FrameWork(
                "Flutter", "Dart", "assets/img/flutter_logo.png", 150, 150),
            FrameWork(
                "React", "Javascript", "assets/img/react_logo.png", 150, 170),
            FrameWork(
                "Next.js", "Javascript", "assets/img/next_logo.png", 150, 150),
            FrameWork(
                "Hardhat", "Solidity", "assets/img/hardhat_logo.png", 150, 170),
          ],
        ),
      ],
    );
  }
}
