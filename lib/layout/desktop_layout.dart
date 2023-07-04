import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio/sections/home/desktop_home.dart';
import 'package:portfolio/sections/about/desktop_about.dart';
import 'package:portfolio/sections/experience/desktop_experience.dart';
import 'package:portfolio/sections/projects/desktop_projects.dart';
import 'package:portfolio/widgets/title_button.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screensList = const [
      SafeArea(child: DesktopHome()),
      SafeArea(child: DesktopAbout()),
      SafeArea(child: DesktopExperience()),
      DesktopProjects(),
    ];
    PageController controller = PageController();
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 1500),
            childAnimationBuilder: (widget) => SlideAnimation(
              child: FlipAnimation(
                child: widget,
              ),
            ),
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 1200),
                        curve: Curves.easeInOutSine);
                  },
                  child: Row(
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
                ),
              ),
              SizedBox(
                width: _width * 0.06,
              ),
              TitleButton(
                title: "Home",
                controller: controller,
                pageNum: 0,
              ),
              TitleButton(
                title: "About",
                controller: controller,
                pageNum: 1,
              ),
              TitleButton(
                title: "Experience & Skills",
                controller: controller,
                pageNum: 2,
              ),
              TitleButton(
                title: "Projects",
                controller: controller,
                pageNum: 3,
              ),
            ],
          ),
        ),
      ),
      body: RawScrollbar(
        controller: controller,
        thickness: 0,
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: controller,
          pageSnapping: false,
          children: screensList,
        ),
      ),
    );
  }
}
