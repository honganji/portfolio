import 'package:flutter/material.dart';
import 'package:portfolio/db.dart';
import 'package:provider/provider.dart';

class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    PageScrollModel pageScrollModel = Provider.of<PageScrollModel>(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Row(
        children: [
          Image.asset(
            "assets/img/Y_icon.png",
            filterQuality: FilterQuality.medium,
            fit: BoxFit.fill,
            height: 50,
            width: 50,
          ),
          const Spacer(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "-About Me",
                  style: TextStyle(
                      fontSize: 22,
                      color: (pageScrollModel.offset <= 450)
                          ? Colors.black
                          : Colors.black54),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "-Experience",
                  style: TextStyle(
                      fontSize: 22,
                      color: (pageScrollModel.offset >= 450 &&
                              pageScrollModel.offset <= 690)
                          ? Colors.black
                          : Colors.black54),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "-Skills",
                  style: TextStyle(
                      fontSize: 22,
                      color: (pageScrollModel.offset >= 690 &&
                              pageScrollModel.offset <= 1000)
                          ? Colors.black
                          : Colors.black54),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "-Projects",
                  style: TextStyle(
                      fontSize: 22,
                      color: pageScrollModel.offset >= 1000
                          ? Colors.black
                          : Colors.black54),
                ),
              ),
              // Text((pageScrollModel.offset ?? "").toString())
            ],
          ),
        ],
      ),
    );
  }
}
