import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio/widgets/skill_box.dart';
import '../../constants/skills_list.dart' as Constants;

class DesktopExperience extends StatelessWidget {
  const DesktopExperience({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.13,
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
                          duration: Duration(milliseconds: 1000),
                          child: FadeInAnimation(
                            child: SkillBox2(Constants.skillList[index]),
                          ),
                        ));
                  }),
                ),
              ),
            ),
          ),
          // Spacer(),
          SizedBox(
            width: width * 0.13,
          ),
          Center(
            child: Image.asset(
              "assets/img/project.png",
              width: width * 0.25,
            ),
          ),
          // Spacer(),
          SizedBox(
            width: width * 0.13,
          ),
        ],
      ),
    );
  }
}
