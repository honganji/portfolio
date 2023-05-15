import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(150, 10, 20, 10),
      child: Row(
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
          Column(
            children: const [
              Text(
                "Yuji Toshihiro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
              ),
              Text(
                "Blockchain Developer",
                style: TextStyle(fontSize: 26),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
