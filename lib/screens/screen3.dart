import 'dart:ui';

import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            width: 400,
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/man.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 280,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: 390,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 220,
            left: 33,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 311 / 375,
                  height: MediaQuery.sizeOf(context).height * 141 / 812,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7, left: 10, right: 3),
                    child: SingleChildScrollView(
                      child: RichText(
                        text: const TextSpan(
                          text: '\nSunday, 9 May 2021',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "\n\nCrypto investors should be\n prepared to lose all their\n money, BOE governor says",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: '\n\nPublished by Ryan Browne',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 470,
            right: 10,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 5, right: 3),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 375 / 375,
                height: MediaQuery.sizeOf(context).height * 438 / 812,
                child: SingleChildScrollView(
                  child: RichText(
                      text: const TextSpan(
                          text: "LONDON —",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: "Nunito",
                          ),
                          children: [
                        TextSpan(
                          text:
                              " Cryptocurrencies “have no intrinsic\n value” and people who invest in them should be\n prepared to lose all their money, Bank of England\n Governor Andrew Bailey said.\n\n\n Digital currencies like bitcoin, ether and even dogecoin\n have been on a tear this year, reminding some\n investors of the 2017 crypto bubble in which bitcoin\n blasted toward 20,000, only to sink as low as 3,122\n a year later.\n\n\n Asked at a press conference Thursday about the\n rising value of cryptocurrencies, Bailey said:\n “They have no intrinsic value. That doesn’t mean to say\n people don’t put value on them, because they can\n have extrinsic value. But they have no intrinsic value.”\n\n\n  That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value.” “I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.” Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority. “Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January. “If consumers invest in these types of product, they should be prepared to lose all their money.” Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Nunito",
                          ),
                        ),
                      ])),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
