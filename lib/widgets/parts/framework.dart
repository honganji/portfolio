import 'package:flutter/material.dart';

class FrameWork extends StatelessWidget {
  final String _framworkName;
  final String _languageName;
  final String _imagePath;
  final double _height;
  final double _width;
  const FrameWork(this._framworkName, this._languageName, this._imagePath,
      this._height, this._width,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$_framworkName\n($_languageName)',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          _imagePath,
          filterQuality: FilterQuality.medium,
          fit: BoxFit.fill,
          height: _height,
          width: _width,
        ),
      ],
    );
  }
}
