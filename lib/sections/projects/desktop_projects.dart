import 'package:flutter/material.dart';
import 'package:portfolio/constants/projects_list.dart' as constants;
import 'package:portfolio/widgets/desktop_mobile_app_box.dart';
import 'package:portfolio/widgets/desktop_web_app_box.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopProjects extends StatelessWidget {
  const DesktopProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: height * 0.05),
              child: const Text(
                "Projects",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontSize: 30,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: GridView.count(
                  physics: const ScrollPhysics(),
                  primary: false,
                  crossAxisCount: 2,
                  crossAxisSpacing: width * 0.03,
                  mainAxisSpacing: height * 0.05,
                  children: List.generate(4, (index) {
                    final project = constants.projectList[index];
                    return (index < 3)
                        ? DesktopWebAppBox(project)
                        : DesktopMobileAppBox(project);
                  }),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.01, horizontal: width * 0.1),
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await launchUrl(Uri.parse(
                              "https://github.com/honganji?tab=repositories"));
                        },
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/img/github_icon.png",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      IconButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse(
                                "https://www.linkedin.com/in/yuji-toshihiro-526244269/"),
                          );
                        },
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/img/linkedin_icon.png",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      IconButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse("https://twitter.com/Tonny5693"),
                          );
                        },
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/img/twitter_icon.png",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    width: width * 0.4,
                    child: const Text(
                      "Designed in Figma and coded in Visual Studio Code. Built with Flutter, deployed with Firebase.",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
