import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    child: Column(
                      children: [
                        Image.asset('assets/images/home.png'),
                        const Text(
                          'home',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 217, 81, 63),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: Column(
                      children: [
                        Image.asset('assets/images/heart.png'),
                        const Text(
                          'favorite',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 183, 183, 182)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromARGB(255, 183, 183, 182),
                    child: Column(
                      children: [
                        Image.asset('assets/images/smile.png'),
                        const Text(
                          'profile',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 183, 183, 182)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 68 / 812,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * 32 / 812,
                    width: MediaQuery.sizeOf(context).width * 296 / 375,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        hintText: 'Dogecoin to the Moon...',
                        fillColor: Colors.white,
                        filled: true,
                        focusColor: const Color.fromARGB(255, 232, 228, 228),
                        suffixIcon: const Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 211, 209, 209),
                              width: 2),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        // border: ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 205, 203, 203)),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 32 / 812,
                  width: MediaQuery.sizeOf(context).width * 32 / 375,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 217, 81, 63),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/Group 38.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 24 / 812,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest News',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "NewYorkSmall",
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontFamily: "Nunito",
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 16 / 812,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: MediaQuery.sizeOf(context).width * 321 / 375,
                    height: MediaQuery.sizeOf(context).height * 240 / 812,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all((Radius.circular(10))),
                      image: DecorationImage(
                        image: AssetImage("assets/images/man.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height:
                                  MediaQuery.sizeOf(context).height * 60 / 812,
                            ),
                            const Text(
                              'by Ryan Browne',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Nunito",
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              'Crypto investors should be\n prepared to lose all their money,\n BOE governor says',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NewYorkSmall",
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.sizeOf(context).height * 40 / 812,
                            ),
                            const Text(
                              'I’m going to say this very bluntly again,” he added. “Buy them \n only if you’re prepared to lose all your money.',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Nunito",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 10 / 375,
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 321 / 375,
                    height: MediaQuery.sizeOf(context).height * 240 / 812,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all((Radius.circular(10))),
                      image: DecorationImage(
                        image: AssetImage("assets/images/man.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Stack(
                      children: [
                        Column(
                          children: [
                            Text(
                              'by Ryan Browne',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Nunito",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Crypto investors should be prepared to lose all their money,\n BOE governor says',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NewYorkSmall",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'I’m going to say this very bluntly again,” he added. “Buy them \n only if you’re prepared to lose all your money.',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Nunito",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 10 / 375,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 75 / 375,
                    height: MediaQuery.sizeOf(context).height * 32 / 812,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all((Radius.circular(50))),
                      color: Color.fromARGB(255, 230, 99, 63),
                    ),
                    child: const Center(
                      child: Text(
                        'Healthy',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Nunito",
                          color: Colors.white,
                        ),
                      ),
                    ),
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
              height: MediaQuery.sizeOf(context).height * 16 / 375,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
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
                        image: AssetImage("assets/images/ss.png"),
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
            )
          ],
        ),
      ),
    );
  }
}
