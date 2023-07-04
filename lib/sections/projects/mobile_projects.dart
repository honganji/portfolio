import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio/widgets/mobile_mobile_app_box.dart';
import 'package:portfolio/widgets/mobile_web_app_box.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/constants/projects_list.dart' as constants;

class MobileProjects extends StatelessWidget {
  const MobileProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Project",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontSize: 30,
                ),
              ),
              Center(
                child: Expanded(
                  child: Center(
                    child: AnimationLimiter(
                      child: GridView.count(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        crossAxisCount: 1,
                        crossAxisSpacing: 10,
                        children: List.generate(4, (index) {
                          final project = constants.projectList[index];
                          return AnimationConfiguration.staggeredGrid(
                            position: index,
                            columnCount: 1,
                            child: ScaleAnimation(
                              duration: const Duration(milliseconds: 1000),
                              child: FadeInAnimation(
                                  child: (index < 2)
                                      ? MobileMobileAppBox(project)
                                      : MobileWebAppBox(project)),
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await launchUrl(Uri.parse(
                              "https://github.com/honganji?tab=repositories"));
                        },
                        iconSize: 20,
                        icon: Image.asset(
                          "assets/img/github_icon.png",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      IconButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse(
                                "https://www.linkedin.com/in/yuji-toshihiro-526244269/"),
                          );
                        },
                        iconSize: 20,
                        icon: Image.asset(
                          "assets/img/linkedin_icon.png",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      IconButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse("https://twitter.com/Tonny5693"),
                          );
                        },
                        iconSize: 20,
                        icon: Image.asset(
                          "assets/img/twitter_icon.png",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: width * 0.5,
                    child: const Text(
                      "Designed in Figma and coded in Visual Studio Code. Built with Flutter, deployed with Firebase.",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
