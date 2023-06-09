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
    return SelectionArea(
      child: LayoutBuilder(builder: (context, constraints) {
        return isDesktopScreen(context)
            ? const DesktopLayout()
            : const MobileLayout();
      }),
    );
  }
}
