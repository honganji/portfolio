import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
        const Text(
          "Projects",
          style: TextStyle(
            fontSize: 35,
            decoration: TextDecoration.underline,
          ),
        ),
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
                Image.asset(
                  "assets/img/swap_dapp.png",
                  height: 300,
                  width: 100,
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
                          onPressed: () => {},
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
                Image.asset(
                  "assets/img/election_dapp.png",
                  height: 200,
                  width: 400,
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
                          onPressed: () => {},
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
                Image.asset(
                  "assets/img/sns_dapp.png",
                  height: 400,
                  width: 200,
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
                          onPressed: () => {},
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
