import 'package:flutter/material.dart';
import 'package:portfolio/widgets/parts/project.dart';
import 'package:portfolio/widgets/parts/sub_title.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
        ),
        SubTitle("Projects"),
        SizedBox(
          height: 15,
        ),
        Project(
          "assets/img/swap_dapp.png",
          "https://github.com/unchain-tech/NEAR-MulPay",
          "Swap dApp on Aurora",
          r"""This is a decentralized app that you can swap tokens
on Aurora block chain. 
                """,
          200,
          400,
          400,
          200,
        ),
        Project(
          "assets/img/sns_dapp.png",
          "https://github.com/unchain-tech/ASTAR-SocialFi",
          "SNS dApp on Astar",
          r"""This is a decentralized app that you can post, follow
and message on Astar block chain.  
                """,
          215,
          400,
          370,
          220,
        ),
        Project(
          "assets/img/election_dapp.png",
          "https://github.com/unchain-tech/NEAR-Election-dApp",
          "Election dApp on NEAR",
          r"""This is a decentralized app that you can vote safely
on NEAR block chain. 
                """,
          60,
          300,
          670,
          80,
        ),
      ],
    );
  }
}
