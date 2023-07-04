import 'package:flutter/material.dart';
import 'package:portfolio/sections/about/mobile_about.dart';
import 'package:portfolio/sections/experience/mobile_experience.dart';
import 'package:portfolio/sections/home/mobile_home.dart';
import 'package:portfolio/sections/projects/mobile_projects.dart';
import 'package:portfolio/sections/skills/mobile_skills.dart';
import 'package:portfolio/widgets/mobile_list_tile.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      const SafeArea(child: MobileHome()),
      const SafeArea(child: MobileAbout()),
      const SafeArea(child: MobileExperience()),
      const SafeArea(child: MobileSkills()),
      const SafeArea(child: MobileProjects()),
    ];
    PageController controller = PageController();
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            MobileListTile(
              title: "Home",
              controller: controller,
              icon: Icons.home,
              pageNum: 1,
            ),
            MobileListTile(
              title: "About",
              controller: controller,
              icon: Icons.person,
              pageNum: 2,
            ),
            MobileListTile(
              title: "Experience",
              controller: controller,
              icon: Icons.work,
              pageNum: 3,
            ),
            MobileListTile(
              title: "Skills",
              controller: controller,
              icon: Icons.palette_outlined,
              pageNum: 4,
            ),
            MobileListTile(
              title: "Projects",
              controller: controller,
              icon: Icons.build,
              pageNum: 5,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              controller.animateToPage(0,
                  duration: const Duration(milliseconds: 1200),
                  curve: Curves.easeInOutSine);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/Y_icon.png",
                  filterQuality: FilterQuality.medium,
                  fit: BoxFit.fill,
                  height: 30,
                  width: 30,
                ),
                const SizedBox(
                  width: 3,
                ),
                const Text(
                  "Yuji Toshihiro",
                  style: TextStyle(fontSize: 20, fontFamily: "Vollkorn"),
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        controller: controller,
        children: widgetList,
      ),
    );
  }
}
