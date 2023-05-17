import 'package:flutter/material.dart';
import 'package:portfolio/widgets/body/about_me.dart';
import 'package:portfolio/widgets/body/experience.dart';
import 'package:portfolio/widgets/body/projects.dart';
import 'package:portfolio/widgets/body/skills.dart';
import 'package:portfolio/widgets/body/bottom.dart';
import 'package:portfolio/widgets/header/profile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: const SingleChildScrollView(
          padding: EdgeInsets.only(left: 150, right: 150, bottom: 30),
          child: Column(
            children: [
              Profile(),
              SizedBox(
                width: double.infinity,
                child: AboutMe(),
              ),
              Experience(),
              Skills(),
              Projects(),
              Bottom(),
            ],
          ),
        ),
      ),
    );
  }
}
