import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio/widgets/desktop_skill_box.dart';
import '../../constants/skills_list.dart' as constants;

class DesktopExperience extends StatelessWidget {
  const DesktopExperience({super.key});

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
            const Text(
              "Experience",
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                fontSize: 30,
              ),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: width * 0.12,
                      child: const Text(
                        "2022 - PRESENT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const Text(
                      "BlockChain Engineer",
                      style: TextStyle(color: Colors.white, fontSize: 27),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(width: width * 0.12),
                    SizedBox(
                      width: width * 0.45,
                      child: const Text(
                        "I develop applications with smart contract using Solidity, Javascript, Dart, Rust and make texts how to make these applications. Also I maintain theseapplication and text.",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ],
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
                    decoration: TextDecoration.underline,
                    fontSize: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.1,
                    ),
                    Center(
                      child: Image.asset(
                        "assets/img/project.png",
                        width: width * 0.20,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
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
                                      child: DesktopSkillBox(
                                        constants.skillList[index],
                                      ),
                                    ),
                                  ));
                            }),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.1,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
