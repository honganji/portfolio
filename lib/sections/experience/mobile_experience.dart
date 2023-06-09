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
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: width * 0.3,
                      child: const Text(
                        "2022 - PRESENT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const Text(
                      "BlockChain Engineer",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: width * 0.3,
                    ),
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
                            crossAxisSpacing: 10,
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
