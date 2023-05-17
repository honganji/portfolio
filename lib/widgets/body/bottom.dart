import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 120, right: 120),
      child: Row(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse(
                      "https://github.com/honganji?tab=repositories"));
                },
                iconSize: 30,
                icon: Image.asset(
                  "assets/img/github_icon.png",
                  filterQuality: FilterQuality.medium,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse(
                      "https://www.linkedin.com/in/yuji-toshihiro-526244269/"));
                },
                iconSize: 30,
                icon: Image.asset(
                  "assets/img/linkedin_icon.png",
                  filterQuality: FilterQuality.medium,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://twitter.com/Tonny5693"));
                },
                iconSize: 30,
                icon: Image.asset(
                  "assets/img/twitter_icon.png",
                  filterQuality: FilterQuality.medium,
                ),
              ),
            ],
          ),
          const Spacer(),
          const SizedBox(
            width: 300,
            child: Text(
                "Designed in Figma and coded in Visual Studio Code. Built with Flutter, deployed with Firebase."),
          )
        ],
      ),
    );
  }
}
