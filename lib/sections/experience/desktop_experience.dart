import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class DesktopExperience extends StatelessWidget {
  const DesktopExperience({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.02,
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
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                height: height * 0.25,
                                width: width * 0.25,
                                color: Colors.deepOrange,
                                child: Center(
                                  child: Text(
                                    "Animated",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ));
                  }),
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Center(
            child: Image.asset(
              "assets/img/project.png",
              width: width * 0.25,
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
        ],
      ),
    );
  }
}
