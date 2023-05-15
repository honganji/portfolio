import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse(
                      "https://github.com/honganji?tab=repositories"));
                },
                iconSize: 40,
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
                iconSize: 40,
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
                iconSize: 40,
                icon: Image.asset(
                  "assets/img/twitter_icon.png",
                  filterQuality: FilterQuality.medium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
