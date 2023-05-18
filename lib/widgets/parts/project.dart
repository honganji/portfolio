import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Project extends StatelessWidget {
  final String _imagePath;
  final String _githubUrl;
  final String _title;
  final String _description;
  final double _topGap;
  final double _imageHeight;
  final double _imageWidth;
  final double _rightGap;

  const Project(
      this._imagePath,
      this._githubUrl,
      this._title,
      this._description,
      this._topGap,
      this._imageHeight,
      this._imageWidth,
      this._rightGap,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          SizedBox(
            width: _topGap,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () async {
                  await launchUrl(Uri.parse(_githubUrl));
                },
                child: SizedBox(
                  height: _imageHeight,
                  width: _imageWidth,
                  child: Image.asset(
                    _imagePath,
                  ),
                ),
              ),
              SizedBox(
                width: _rightGap,
              ),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _title,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      _description,
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 1,
                      thickness: 2.0,
                    ),
                    const SizedBox(
                      height: 10,
                      width: 300,
                    ),
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            side: const BorderSide(
                                width: 1, // the thickness
                                color: Colors.black // the color of the border
                                )),
                        child: const Text(
                          "github repository ->",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () async {
                          await launchUrl(Uri.parse(_githubUrl));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
