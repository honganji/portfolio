import 'package:flutter/material.dart';
import 'package:portfolio/widgets/header/icon.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IconRow(),
      ],
    );
  }
}
