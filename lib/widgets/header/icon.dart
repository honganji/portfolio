import 'package:flutter/material.dart';

class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          Image.asset(
            "assets/img/Y_icon.png",
            filterQuality: FilterQuality.medium,
            fit: BoxFit.fill,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
