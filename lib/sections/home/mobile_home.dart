import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHome2State();
}

class _MobileHome2State extends State<MobileHome> {
  late Image image;
  late double width;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    width = MediaQuery.of(context).size.width;
    image = Image.asset("assets/img/mobile.png", width: width * 0.2);
    precacheImage(image.image, context);
  }

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
            Column(
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
                  "Full-Stack Dev",
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
                    decoration: const BoxDecoration(color: Colors.black),
                    child: image,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
