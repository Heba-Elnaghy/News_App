import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 68 / 812,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 32 / 812,
              width: MediaQuery.sizeOf(context).width * 335 / 375,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: 'COVID New Variant',
                  fillColor: Colors.white,
                  filled: true,
                  focusColor: Colors.white,
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {},
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 200, 198, 198), width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 193, 190, 190)),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 24 / 812,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30))),
                        builder: (context) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height *
                                      20 /
                                      375,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Filter',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Nunito",
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  81 /
                                                  375,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              32 /
                                              812,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    (Radius.circular(50))),
                                            border: Border.all(
                                                width: 2, color: Colors.black),
                                            color: Colors.white,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Reset',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Nunito",
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height *
                                      25 /
                                      812,
                                ),
                                const Text(
                                  "Sort By",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: "Nunito",
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height *
                                      10 /
                                      812,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          114 /
                                          375,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              32 /
                                              812,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            (Radius.circular(50))),
                                        border: Border.all(
                                            width: 2,
                                            color: const Color.fromARGB(
                                                255, 229, 227, 227)),
                                        color: Colors.white,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Recommended',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            fontFamily: "Nunito",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          7 /
                                          375,
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          66 /
                                          375,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              32 /
                                              812,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            (Radius.circular(50))),
                                        border: Border.all(
                                            width: 2,
                                            color: const Color.fromARGB(
                                                255, 229, 227, 227)),
                                        color: Colors.white,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Latest',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            fontFamily: "Nunito",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          7 /
                                          375,
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          104 /
                                          375,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              32 /
                                              812,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            (Radius.circular(50))),
                                        border: Border.all(
                                            width: 2,
                                            color: const Color.fromARGB(
                                                255, 229, 227, 227)),
                                        color: Colors.white,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Most Viewed',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            fontFamily: "Nunito",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height *
                                      7 /
                                      812,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          77 /
                                          375,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              32 /
                                              812,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            (Radius.circular(50))),
                                        border: Border.all(
                                            width: 2,
                                            color: const Color.fromARGB(
                                                255, 229, 227, 227)),
                                        color: Colors.white,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Channel',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            fontFamily: "Nunito",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          7 /
                                          375,
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          86 /
                                          375,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              32 /
                                              812,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            (Radius.circular(50))),
                                        border: Border.all(
                                            width: 2,
                                            color: const Color.fromARGB(
                                                255, 229, 227, 227)),
                                        color: Colors.white,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Following',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            fontFamily: "Nunito",
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height *
                                      25 /
                                      375,
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width *
                                      345 /
                                      375,
                                  height: MediaQuery.sizeOf(context).height *
                                      48 /
                                      812,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all((Radius.circular(50))),
                                    color: Color.fromARGB(255, 230, 99, 63),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'SAVE',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: "Nunito",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        backgroundColor: Color.fromARGB(255, 230, 99, 63),
                        minimumSize: const Size(110, 35)),
                    child: const Text("Filter"),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 7 / 375,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 95 / 375,
                    height: MediaQuery.sizeOf(context).height * 32 / 812,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all((Radius.circular(50))),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 229, 227, 227)),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        'Technology',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Nunito",
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 7 / 375,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 75 / 375,
                    height: MediaQuery.sizeOf(context).height * 32 / 812,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all((Radius.circular(50))),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 229, 227, 227)),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        'Finance',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Nunito",
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 7 / 375,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 56 / 375,
                    height: MediaQuery.sizeOf(context).height * 32 / 812,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all((Radius.circular(50))),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 229, 227, 227)),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        'Art',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Nunito",
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 7 / 375,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 75 / 375,
                    height: MediaQuery.sizeOf(context).height * 32 / 812,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all((Radius.circular(50))),
                      border: Border.all(
                          width: 2,
                          color: const Color.fromARGB(255, 229, 227, 227)),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        'Sports',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Nunito",
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 28 / 812,
            ),
            RichText(
                text: const TextSpan(
                    text: "About 11,130,000 results for ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: "Nunito",
                    ),
                    children: [
                  TextSpan(
                    text: "COVED New Variant. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Nunito",
                    ),
                  ),
                ])),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 28 / 812,
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.sizeOf(context).width * 345 / 375,
                  height: MediaQuery.sizeOf(context).height * 128 / 812,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all((Radius.circular(10))),
                    image: DecorationImage(
                      image: AssetImage("assets/images/ss.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Column(children: [
                      const Text(
                        "5 things to know about the 'conundrum' of\n lupus",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "NewYorkSmall",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 50 / 812,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Matt Villano",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Nunito",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Sunday, 9 May 2021",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Nunito",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ]),
                  ]),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 10 / 812,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.sizeOf(context).width * 345 / 375,
                  height: MediaQuery.sizeOf(context).height * 128 / 812,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all((Radius.circular(10))),
                    image: DecorationImage(
                      image: AssetImage("assets/images/AA.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Column(children: [
                      const Text(
                        "4 ways families can ease anxiety together",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "NewYorkSmall",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 65 / 812,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Zain Korsgaard",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Nunito",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Sunday, 9 May 2021",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Nunito",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ]),
                  ]),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 10 / 812,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.sizeOf(context).width * 345 / 375,
                  height: MediaQuery.sizeOf(context).height * 128 / 812,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all((Radius.circular(10))),
                    image: DecorationImage(
                      image: AssetImage("assets/images/ff.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(children: [
                    Column(children: [
                      const Text(
                        "What to do if you're planning or attending a\n wedding during the pandemic",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: "NewYorkSmall",
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 50 / 812,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Zain Korsgaard",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Nunito",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Sunday, 9 May 2021",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Nunito",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ]),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
