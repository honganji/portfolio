import 'package:flutter/material.dart';
import 'package:portfolio/widgets/parts/sub_title.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 60,
        ),
        const SubTitle("Projects"),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 200,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    await launchUrl(Uri.parse(
                        "https://github.com/unchain-tech/NEAR-MulPay"));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 400,
                    width: 400,
                    child: Image.asset(
                      "assets/img/swap_dapp.png",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Swap dApp on Aurora",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        r"""This is a decentralized app that you can swap tokens
on Aurora block chain. 
                """,
                        style: TextStyle(
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
                            await launchUrl(Uri.parse(
                                "https://github.com/unchain-tech/NEAR-MulPay"));
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
        Row(
          children: [
            const SizedBox(
              width: 150,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    await launchUrl(Uri.parse(
                        "https://github.com/unchain-tech/ASTAR-SocialFi"));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 60, left: 60, right: 70),
                    height: 400,
                    width: 370,
                    child: Image.asset(
                      "assets/img/sns_dapp.png",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 150,
                ),
                IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "SNS dApp on Astar",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        r"""TThis is a decentralized app that you can post, follow
and message on Astar block chain.  
                """,
                        style: TextStyle(
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
                            await launchUrl(Uri.parse(
                                "https://github.com/unchain-tech/ASTAR-SocialFi"));
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
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () async {
                    await launchUrl(Uri.parse(
                        "https://github.com/unchain-tech/NEAR-Election-dApp"));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 60, left: 60, right: 40),
                    height: 300,
                    width: 600,
                    child: Image.asset(
                      "assets/img/election_dapp.png",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Election dApp on NEAR",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        r"""This is a decentralized app that you can vote safely
on NEAR block chain. 
                """,
                        style: TextStyle(
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
                            await launchUrl(Uri.parse(
                                "https://github.com/unchain-tech/NEAR-Election-dApp"));
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
      ],
    );
  }
}
