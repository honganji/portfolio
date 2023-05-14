import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          const Icon(Icons.abc),
          const Spacer(),
          Row(
            children: [
              Image.asset(
                "assets/img/github_icon.png",
                height: 25,
                width: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/img/linkedin_icon.png",
                height: 25,
                width: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/img/twitter_icon.png",
                height: 25,
                width: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
