import 'package:flutter/material.dart';
import 'package:portfolio/layout/desktop_layout.dart';
import 'package:portfolio/layout/mobile_layout.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  static int breakPoint = 800;

  static bool isDesktopScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= breakPoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // double _maxWidth = constraints.maxWidth;
      return isDesktopScreen(context)
          ? const DesktopLayout()
          : const MobileLayout();
    });
  }
}
