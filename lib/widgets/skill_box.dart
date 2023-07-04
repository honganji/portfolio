import 'package:flutter/material.dart';
import 'package:portfolio/model/skill_model.dart';

class SkillBox extends StatelessWidget {
  const SkillBox(this.skill, {super.key});
  final SkillModel skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            '${skill.framworkName}\n(${skill.languageName})',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            skill.imagePath,
            filterQuality: FilterQuality.medium,
            fit: BoxFit.fill,
            height: 150,
            width: 150,
          ),
        ],
      ),
    );
  }
}

class SkillBox2 extends StatefulWidget {
  const SkillBox2(this.skill, {super.key});
  final SkillModel skill;

  @override
  State<SkillBox2> createState() => _SkillBox2State();
}

class _SkillBox2State extends State<SkillBox2> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
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
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 50, 50, 50),
          boxShadow: [
            BoxShadow(
              color: isHover ? Color.fromARGB(255, 125, 61, 0) : Colors.black,
              offset: isHover ? Offset(3.0, 3.0) : Offset(0, 0),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              '${widget.skill.framworkName}\n(${widget.skill.languageName})',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              widget.skill.imagePath,
              filterQuality: FilterQuality.medium,
              fit: BoxFit.fill,
              height: 150,
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
