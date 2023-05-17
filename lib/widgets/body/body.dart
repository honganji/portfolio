import 'package:flutter/material.dart';
import 'package:portfolio/widgets/body/about_me.dart';
import 'package:portfolio/widgets/body/experience.dart';
import 'package:portfolio/widgets/body/projects.dart';
import 'package:portfolio/widgets/body/skills.dart';
import 'package:portfolio/widgets/header/profile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 150, right: 150),
        child: Column(
          children: const [
            SizedBox(
              width: double.infinity,
              child: Profile(),
            ),
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
            SizedBox(
              width: double.infinity,
              child: Projects(),
            ),
          ],
        ),
      ),
    );
  }
}
