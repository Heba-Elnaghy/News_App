import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/Cubits/GetNewsCubit/get_news_cubit.dart';
import 'package:flutter_application_1/screens/details_screen.dart';
import 'package:flutter_application_1/screens/screen2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final List bar = [
    "Technology",
    "Finance",
    "Art",
    "Sports",
  ];
  final List image = [
    const AssetImage("assets/images/ff.png"),
    const AssetImage("assets/images/AA.png"),
    const AssetImage("assets/images/ss.png"),
  ];
  final List text1 = [
    "5 things to know about the 'conundrum' of\n lupus",
    "4 ways families can ease anxiety together",
    "What to do if you're planning or attending a\n wedding during the pandemic",
  ];
  final List text2 = [
    "Matt Villano",
    "Zain Korsgaard",
    "Zain Korsgaard",
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        print(state);
        final cubit = context.read<GetNewsCubit>();
        if (state is GetNewsLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetNewsSuccess) {
          return Scaffold(
            // floatingActionButton: Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       width: MediaQuery.of(context).size.width / 1.6,
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(50),
            //       ),
            //       child: Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             FloatingActionButton(
            //               elevation: 0,
            //               onPressed: () {},
            //               backgroundColor: Colors.white,
            //               foregroundColor: Colors.grey,
            //               child: Column(
            //                 children: [
            //                   Image.asset('assets/images/home.png'),
            //                   const Text(
            //                     'home',
            //                     style: TextStyle(
            //                       fontSize: 13,
            //                       color: Color.fromARGB(255, 217, 81, 63),
            //                     ),
            //                   )
            //                 ],
            //               ),
            //             ),
            //             const SizedBox(width: 12),
            //             FloatingActionButton(
            //               elevation: 0,
            //               onPressed: () {},
            //               backgroundColor: Colors.white,
            //               child: Column(
            //                 children: [
            //                   Image.asset('assets/images/heart.png'),
            //                   const Text(
            //                     'favorite',
            //                     style: TextStyle(
            //                         fontSize: 13,
            //                         color: Color.fromARGB(255, 183, 183, 182)),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             const SizedBox(width: 12),
            //             FloatingActionButton(
            //               elevation: 0,
            //               onPressed: () {},
            //               backgroundColor: Colors.white,
            //               foregroundColor: const Color.fromARGB(255, 183, 183, 182),
            //               child: Column(
            //                 children: [
            //                   Image.asset('assets/images/smile.png'),
            //                   const Text(
            //                     'profile',
            //                     style: TextStyle(
            //                         fontSize: 13,
            //                         color: Color.fromARGB(255, 183, 183, 182)),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            body: SingleChildScrollView(
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
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            hintText: 'Dogecoin to the Moon...',
                            fillColor: Colors.white,
                            filled: true,
                            focusColor:
                                const Color.fromARGB(255, 232, 228, 228),
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
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 20 / 812,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 40 / 812,
                        width: MediaQuery.sizeOf(context).width * 40 / 375,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 230, 99, 63),
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
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: cubit.response!.articles.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                    index: index,
                                  ),
                                ),
                              );
                            },
                            child: leatestNewsItem(
                              context: context,
                              imageUrl: cubit
                                      .response!.articles[index].urlToImage ??
                                  'https://cdn.pixabay.com/photo/2015/02/15/09/33/news-636978_640.jpg',
                              author:
                                  cubit.response!.articles[index].author ?? '',
                              title: cubit.response!.articles[index].title,
                              description:
                                  cubit.response!.articles[index].description,
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 10 / 375,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 95 / 375,
                          height: MediaQuery.sizeOf(context).height * 32 / 812,
                          margin: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all((Radius.circular(50))),
                            color: Color.fromARGB(255, 230, 99, 63),
                          ),
                          child: const Center(
                            child: Text(
                              "Healthy",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Nunito",
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        for (int i = 0; i < 4; i++)
                          Container(
                            width: MediaQuery.sizeOf(context).width * 95 / 375,
                            height:
                                MediaQuery.sizeOf(context).height * 32 / 812,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all((Radius.circular(50))),
                              border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 229, 227, 227)),
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Center(
                              child: Text(
                                bar[i],
                                style: const TextStyle(
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
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            index: index,
                          ),
                        ),
                      ),
                      child: listItem(
                        context: context,
                        imageUrl: cubit.response!.articles[index].urlToImage ??
                            'https://cdn.pixabay.com/photo/2015/02/15/09/33/news-636978_640.jpg',
                        author: cubit.response!.articles[index].author ?? " ",
                        title: cubit.response!.articles[index].title,
                        publishedAt: DateFormat('MMMM d, y').format(
                          DateTime.parse(
                            cubit.response!.articles[index].publishedAt,
                          ),
                        ),
                      ),
                    ),
                    itemCount: cubit.response!.articles.length,
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: Text('Error'),
          );
        }
      },
    );
  }

  Widget listItem({
    required BuildContext context,
    required String imageUrl,
    required String author,
    required String title,
    required String publishedAt,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.sizeOf(context).width * 345 / 375,
      height: MediaQuery.sizeOf(context).height * 128 / 812,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all((Radius.circular(10))),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(children: [
        Column(children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              fontFamily: "NewYorkSmall",
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 50 / 812,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 50,
                child: Text(
                  author,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 12,
                    fontFamily: "Nunito",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                publishedAt,
                style: const TextStyle(
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
    );
  }

  Widget leatestNewsItem({
    required BuildContext context,
    required String imageUrl,
    required String author,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(5),
      width: MediaQuery.sizeOf(context).width * 321 / 375,
      height: MediaQuery.sizeOf(context).height * 240 / 812,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all((Radius.circular(10))),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 60 / 812,
              ),
              Text(
                author,
                style: const TextStyle(
                  fontSize: 10,
                  fontFamily: "Nunito",
                  color: Colors.white,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "NewYorkSmall",
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 40 / 812,
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 10,
                  fontFamily: "Nunito",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
