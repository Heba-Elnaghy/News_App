import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/Cubits/GetNewsCubit/get_news_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, GetNewsState>(
      builder: (context, state) {
        final cubit = context.read<GetNewsCubit>();
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        cubit.response!.articles[index].urlToImage!),
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
                  borderRadius: BorderRadius.circular(30),
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
                        padding:
                            const EdgeInsets.only(top: 7, left: 10, right: 3),
                        child: SingleChildScrollView(
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 8,
                            text: TextSpan(
                              text: "${DateFormat('MMMM d, y').format(
                                DateTime.parse(
                                  cubit.response!.articles[index].publishedAt,
                                ),
                              )}\n\n",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      "${cubit.response!.articles[index].title}\n\n",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      cubit.response!.articles[index].author ??
                                          '',
                                  style: const TextStyle(
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
                      child: Text(
                        cubit.response!.articles[index].content,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: "Nunito",
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
