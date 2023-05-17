import 'package:flutter/material.dart';
import 'package:portfolio/widgets/header/icon_row.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        IconRow(),
      ],
    );
  }
}
