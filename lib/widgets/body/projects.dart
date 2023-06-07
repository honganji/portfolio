import 'package:flutter/material.dart';
import 'package:portfolio/widgets/parts/project.dart';
import 'package:portfolio/widgets/parts/sub_title.dart';

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
          "assets/img/i-service.png",
          "https://github.com/honganji/i-service",
          "i-service",
          r"""This is a mobile application that you can manage your information easily.
You can give access rights for institutions like hospital or airport so that
you don't have to input your information repeatedly.
                """,
          215,
          400,
          370,
          220,
        ),
        Project(
          "assets/img/swap_dapp.png",
          "https://github.com/honganji/Aurora-MulPay",
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
