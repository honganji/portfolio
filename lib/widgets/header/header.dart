import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio/widgets/header/iconRow.dart';
import 'package:portfolio/widgets/header/profile.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        IconRow(),
        Profile(),
      ],
    );
  }
}
