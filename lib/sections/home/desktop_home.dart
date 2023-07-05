import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({super.key});

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
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
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 2000),
              childAnimationBuilder: (widget) => FadeInAnimation(child: widget),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Thanks for visiting my website!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Yuji Toshihiro",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Flutter Dev",
                      style: TextStyle(color: Colors.amber[400], fontSize: 28),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
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
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Center(
            child: Container(
              decoration: const BoxDecoration(color: Colors.black),
              child: image,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
