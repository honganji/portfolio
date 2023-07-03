import 'package:flutter/material.dart';

class TitleButton extends StatelessWidget {
  const TitleButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) =>
              states.contains(MaterialState.hovered)
                  ? const Color.fromARGB(255, 20, 135, 109)
                  : Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ))),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
