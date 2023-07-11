import 'package:flutter/material.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileWebAppBox extends StatefulWidget {
  const MobileWebAppBox(this.project, {super.key});
  final ProjectModel project;

  @override
  State<MobileWebAppBox> createState() => _MobileWebAppBoxState();
}

class _MobileWebAppBoxState extends State<MobileWebAppBox> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 240, 240, 240),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 125, 61, 0),
            offset: Offset(5.0, 5.0),
            blurRadius: 6.0,
          ),
          BoxShadow(
            color: Color.fromARGB(255, 125, 61, 0),
            offset: Offset(-5.0, -5.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: height * 0.02),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.01,
                vertical: width * 0.005,
              ),
              child: Image.asset(
                widget.project.imagePath,
                filterQuality: FilterQuality.medium,
                fit: BoxFit.fill,
                width: width * 0.6,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.project.projectName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    SizedBox(
                      height: height * 0.05,
                      width: width * 0.6,
                      child: Text(
                        widget.project.description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: true,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 1,
                      thickness: 2.0,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      height: height * 0.04,
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
                          "github repo",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () async {
                          await launchUrl(
                              Uri.parse(widget.project.repositoryPath));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
