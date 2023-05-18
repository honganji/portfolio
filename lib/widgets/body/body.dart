import 'package:flutter/material.dart';
import 'package:portfolio/db.dart';
import 'package:portfolio/widgets/body/about_me.dart';
import 'package:portfolio/widgets/body/experience.dart';
import 'package:portfolio/widgets/body/projects.dart';
import 'package:portfolio/widgets/body/skills.dart';
import 'package:portfolio/widgets/body/bottom.dart';
import 'package:portfolio/widgets/header/profile.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  // final ScrollController scrollController = ScrollController();
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    PageScrollModel pageScrollModel = Provider.of<PageScrollModel>(context);
    return SizedBox(
      width: double.infinity,
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: NotificationListener<ScrollEndNotification>(
          onNotification: ((notification) {
            // print(scrollController.offset);
            Provider.of<PageScrollModel>(context, listen: false)
                .changeScrollControler(scrollController.offset);
            return true;
          }),
          child: SingleChildScrollView(
            controller: scrollController,
            padding: const EdgeInsets.only(left: 150, right: 150, bottom: 30),
            child: const Column(
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
      ),
    );
  }
}
