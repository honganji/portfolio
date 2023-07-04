import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: AnimationConfiguration.toStaggeredList(
          duration: Duration(milliseconds: 1200),
          childAnimationBuilder: (widget) => SlideAnimation(child: widget),
          children: [
            Expanded(
              child: Column(
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
                    style: TextStyle(color: Colors.yellow[400], fontSize: 28),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () async {},
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/img/github_icon.png",
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {},
                        iconSize: 40,
                        icon: Image.asset(
                          "assets/img/linkedin_icon.png",
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {},
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
            ),
            Expanded(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Image.asset(
                    "assets/img/mobile.png",
                    height: 300,
                    width: 300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}