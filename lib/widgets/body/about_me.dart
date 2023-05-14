import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 60,
        ),
        Text(
          "About Me",
          style: TextStyle(
            fontSize: 35,
            decoration: TextDecoration.underline,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          r"""Hello, I’m Yuji Toshihiro and I’m a mobile and blockchain developer from Japan.

I started programming 2 years ago. I joined my friends’ team and worked on mobile application development
with flutter and firebase.

1 year ago, I met blockchain technology and decided to work for blockchain company. Since then, I’ve been 
working for shiftbase, inc. as blockchain developer.

Now, I’m really interested in mobile application development because I can create something that helps people
practically. Digital Transformation is proceeding fast and such a great technology making my life better. So I want to
be a part of that work.""",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
