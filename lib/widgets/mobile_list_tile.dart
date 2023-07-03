import 'package:flutter/material.dart';

class MobileListTile extends StatelessWidget {
  const MobileListTile(
      {super.key,
      required this.title,
      required this.controller,
      required this.icon,
      required this.pageNum});
  final String title;
  final PageController controller;
  final IconData icon;
  final int pageNum;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      leading: Icon(
        icon,
        color: Colors.redAccent,
      ),
      onTap: () {
        controller.animateToPage(
          pageNum,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.easeInOutSine,
        );
        Navigator.pop(context);
      },
    );
  }
}
