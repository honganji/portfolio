import 'package:flutter/material.dart';
import 'package:portfolio/model/skill_model.dart';

class MobileSkillBox extends StatefulWidget {
  const MobileSkillBox(this.skill, {super.key});
  final SkillModel skill;

  @override
  State<MobileSkillBox> createState() => _DesktopSkillBoxState();
}

class _DesktopSkillBoxState extends State<MobileSkillBox> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 165, 165, 165),
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
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Image.asset(
            widget.skill.imagePath,
            filterQuality: FilterQuality.medium,
            fit: BoxFit.fill,
            width: width * 0.2,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
