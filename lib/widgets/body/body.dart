import 'package:flutter/material.dart';
import 'package:portfolio/widgets/body/about_me.dart';
import 'package:portfolio/widgets/body/experience.dart';
import 'package:portfolio/widgets/body/projects.dart';
import 'package:portfolio/widgets/body/skills.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: AboutMe(),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Experience(),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Skills(),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Projects(),
        ),
      ],
    );
  }
}
