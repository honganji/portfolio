import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(100, 10, 20, 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(150.0),
            child: Image.asset(
              "assets/img/profile.jpg",
              filterQuality: FilterQuality.medium,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Yuji Toshihiro",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text("Mobile and blockchain developer"),
            ],
          ),
        ],
      ),
    );
  }
}
