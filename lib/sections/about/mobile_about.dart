import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: AnimationConfiguration.toStaggeredList(
          duration: Duration(milliseconds: 630),
          childAnimationBuilder: (widget) => SlideAnimation(
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: [
            Expanded(
              child: Container(
                width: width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About Me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    RichText(
                      text: TextSpan(
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white),
                        children: [
                          const TextSpan(
                            text:
                                "Yuji Toshihiro. Frontend and blockchain developer from Japan.\n\n",
                          ),
                          const TextSpan(
                            text:
                                "In 1321 I started working on mobile application development using ",
                          ),
                          TextSpan(
                            text: "“Flutter” and “Firebase”.\n\n",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.amber[400],
                            ),
                          ),
                          const TextSpan(
                            text: "Later I got also interested in ",
                          ),
                          TextSpan(
                            text: "blockchain development ",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.amber[400],
                            ),
                          ),
                          const TextSpan(
                            text:
                                "and in 1322 I joined “shiftbase”. I’ve created a couple of web and mobile application projects from scratch: “Malpay”, “Astar SNS”, “Election dApp”.\n\n",
                          ),
                          const TextSpan(
                            text:
                                "Mobile and Web development has been my passion since my university enrolment and something I have been working on as a hobby. Outside “Shiftbase” I have also created applications for accounting services and electricity demand. \n\n",
                          ),
                          const TextSpan(
                            text: "In my work I use ",
                          ),
                          TextSpan(
                            text: "Solidity, Javascript, Dart & Rust. ",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.amber[400],
                            ),
                          ),
                          const TextSpan(
                            text:
                                "Moreover, I write instructions on how to develop blockchain applications from scratch for other engineers’ use.\n\n",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Image.asset(
                    "assets/img/profile.jpeg",
                    height: 100,
                    width: 100,
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
