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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      opaque: false,
      onHover: (s) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (s) {
        setState(() {
          isHover = false;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 240, 240, 240),
          boxShadow: [
            BoxShadow(
              color: isHover
                  ? const Color.fromARGB(255, 125, 61, 0)
                  : Colors.black,
              offset: isHover ? const Offset(5.0, 5.0) : const Offset(0, 0),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.03),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: width * 0.01,
                  top: width * 0.005,
                  bottom: width * 0.005,
                  right: width * 0.01,
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
                    vertical: height * 0.03,
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
                      Text(widget.project.description),
                      SizedBox(height: height * 0.008),
                      const Divider(
                        color: Colors.black,
                        height: 1,
                        thickness: 2.0,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      SizedBox(
                        width: width * 0.3,
                        height: height * 0.1,
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
                            "github repo ->",
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
      ),
    );
  }
}
