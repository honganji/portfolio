import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
      child: Row(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  "assets/img/profile.jpg",
                  filterQuality: FilterQuality.medium,
                  fit: BoxFit.fill,
                  height: 150,
                  width: 150,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                children: [
                  Text(
                    "Yuji Toshihiro",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 70),
                  ),
                  Text(
                    "Blockchain Developer",
                    style: TextStyle(fontSize: 26),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Row(
            children: [
              Text(
                "Experience",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ],
      ),
    );
  }
}
