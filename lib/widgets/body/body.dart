import 'package:flutter/material.dart';
import 'package:portfolio/widgets/body/about_me.dart';
import 'package:portfolio/widgets/body/experience.dart';
import 'package:portfolio/widgets/body/projects.dart';
import 'package:portfolio/widgets/body/skills.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(
            width: double.infinity,
            child: AboutMe(),
          ),
          SizedBox(
            width: double.infinity,
            child: Experience(),
          ),
          SizedBox(
            width: double.infinity,
            child: Skills(),
          ),
          Projects(),
        ],
      ),
    );
  }
}
