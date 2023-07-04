import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 1200),
          childAnimationBuilder: (widget) => SlideAnimation(child: widget),
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Thanks for visiting my website!",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Yuji Toshihiro",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Flutter Dev",
                    style: TextStyle(color: Colors.yellow[400], fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () async {
                          await launchUrl(Uri.parse(
                              "https://github.com/honganji?tab=repositories"));
                        },
                        iconSize: 25,
                        icon: Image.asset(
                          "assets/img/github_icon.png",
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse(
                                "https://www.linkedin.com/in/yuji-toshihiro-526244269/"),
                          );
                        },
                        iconSize: 25,
                        icon: Image.asset(
                          "assets/img/linkedin_icon.png",
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          await launchUrl(
                            Uri.parse("https://twitter.com/Tonny5693"),
                          );
                        },
                        iconSize: 25,
                        icon: Image.asset(
                          "assets/img/twitter_icon.png",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Image.asset(
                        "assets/img/mobile.png",
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: Center(
            //     child: Container(
            //       decoration: BoxDecoration(color: Colors.black),
            //       child: Image.asset(
            //         "assets/img/mobile.png",
            //         height: 300,
            //         width: 300,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
