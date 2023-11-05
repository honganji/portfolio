import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../../constants/skills_list.dart' as constants;
import '../../widgets/mobile_skill_box.dart';

class MobileExperience extends StatelessWidget {
  const MobileExperience({super.key});

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
            const Spacer(),
            const Text(
              "Experience",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                decoration: TextDecoration.underline,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * 0.3,
                      child: const Text(
                        "2022/5 - 2023/6",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      "BlockChain and Frontend Engineer(shiftbase)",
                      style: TextStyle(color: Colors.amber[400], fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: width * 0.5,
                      child: const Text(
                        "I develop applications with smart contract using Solidity, Javascript, Dart, Rust and make texts how to make these applications. Also I maintain these application and text.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width * 0.3,
                      child: const Text(
                        "2023/7 - 2023/10",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Text(
                      "Mobile Engineer(Jinjibu.inc., freelance)",
                      style: TextStyle(color: Colors.amber[400], fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: width * 0.5,
                      child: const Text(
                        "I worked on mobile app development with API. I implemented QR code reader function, Deep Link, and so on.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.06,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.03,
                ),
                const Text(
                  "Skills",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: AnimationLimiter(
                          child: GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            children: List.generate(4, (index) {
                              return AnimationConfiguration.staggeredGrid(
                                  position: index,
                                  columnCount: 2,
                                  child: ScaleAnimation(
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    child: FadeInAnimation(
                                      child: MobileSkillBox(
                                        constants.skillList[index],
                                      ),
                                    ),
                                  ));
                            }),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
