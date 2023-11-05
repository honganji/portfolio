import 'package:flutter/material.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                width: width * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About Me",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    RichText(
                      text: TextSpan(
                        style:
                            const TextStyle(fontSize: 17, color: Colors.white),
                        children: [
                          const TextSpan(
                            text:
                                "Yuji Toshihiro. Full-Stack developer from Japan.\n\n",
                          ),
                          const TextSpan(
                            text:
                                "In 2021 I started working on frontend application development using ",
                          ),
                          TextSpan(
                            text: "“JavaScript”.\n\n",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.amber[400],
                            ),
                          ),
                          const TextSpan(
                            text: "Later I got also interested in ",
                          ),
                          TextSpan(
                            text: "blockchain development ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.amber[400],
                            ),
                          ),
                          const TextSpan(
                            text:
                                "and in 2022 I joined “shiftbase”. I’ve created a couple of web and mobile application projects from scratch: “Malpay”, “Astar SNS”, “Election dApp”.\n\n",
                          ),
                          const TextSpan(
                            text:
                                "Mobile and Web development has been my passion since my university enrolment and something I have been working on as a hobby. Outside “Shiftbase” I have also created applications for accounting services and electricity demand. \n\n",
                          ),
                          const TextSpan(
                            text: "In my work I use ",
                          ),
                          TextSpan(
                            text: "Javascript, Solidity, and Dart. ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.amber[400],
                            ),
                          ),
                          const TextSpan(
                            text:
                                "Moreover, I wrote instructions on how to develop blockchain applications from scratch for other engineers’ use.\n\n",
                          ),
                          const TextSpan(
                            text:
                                "At the most recent work, I worked on mobile application. At the time, I needed to use API made with Ruby and Rails. This experience got me interested in Backend tech. Since then, I started learning ",
                          ),
                          TextSpan(
                            text: "\"SQL\" and \"Spring Boot(Java)\". ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.amber[400],
                            ),
                          ),
                          const TextSpan(
                            text:
                                "Now I'm working on Full-Stack development.\n\n",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Expanded(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Image.asset(
                    "assets/img/profile.jpeg",
                    width: width * 0.25,
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
