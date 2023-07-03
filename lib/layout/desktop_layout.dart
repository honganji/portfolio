import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio/widgets/title_button.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: AnimationConfiguration.toStaggeredList(
            childAnimationBuilder: (widget) => SlideAnimation(
              child: FadeInAnimation(
                child: widget,
              ),
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/Y_icon.png",
                    filterQuality: FilterQuality.medium,
                    fit: BoxFit.fill,
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    "Yuji Toshihiro",
                    style: TextStyle(fontSize: 30, fontFamily: "Vollkorn"),
                  ),
                ],
              ),
              SizedBox(
                width: 500,
              ),
              TitleButton(title: "Home"),
              TitleButton(title: "About"),
              TitleButton(title: "Experience"),
              TitleButton(title: "Skills"),
              TitleButton(title: "Projects")
            ],
          ),
        ),
      ),
    );
  }
}
