import 'package:flutter/material.dart';
import 'package:portfolio/model/skill_model.dart';

class MobileSkillBox extends StatefulWidget {
  const MobileSkillBox(this.skill, {super.key});
  final SkillModel skill;

  @override
  State<MobileSkillBox> createState() => _DesktopSkillBoxState();
}

class _DesktopSkillBoxState extends State<MobileSkillBox> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      opaque: false,
      onHover: (s) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (s) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 50, 50, 50),
          boxShadow: [
            BoxShadow(
              color: isHover
                  ? const Color.fromARGB(255, 125, 61, 0)
                  : Colors.black,
              offset: isHover ? const Offset(2.0, 2.0) : const Offset(0, 0),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: width * 0.007,
            ),
            Text(
              '${widget.skill.framworkName}\n(${widget.skill.languageName})',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
            const Spacer(),
            Image.asset(
              widget.skill.imagePath,
              filterQuality: FilterQuality.medium,
              fit: BoxFit.fill,
              width: width * 0.07,
              // height: height * 0.1,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
