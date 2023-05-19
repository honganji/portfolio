import 'package:flutter/material.dart';
import 'package:portfolio/widgets/parts/sub_title.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        SubTitle("About Me"),
        SizedBox(
          height: 15,
        ),
        Text(
          r"""Yuji Toshihiro. 
Mobile and blockchain developer from Japan.

In 2021 I started working on mobile application development using “Flutter” and “Firebase”.

Later I got also interested in blockchain development and in 2022 I joined “Shiftbase”. I’ve created a couple of web– and mobile application projects from scratch: “Malpay”, “Astar SNS”, “Election DAPP”. 

Mobile app development has been my passion since my university enrolment and something I have been working on as a hobby. Outside “Shiftbase” I have also created applications for accounting services and electricity demand. 

In my work I use Solidity, Javascript, Dart & Rust. Moreover, I write instructions on how to develop blockchain applications from scratch for other engineers’ use.""",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
