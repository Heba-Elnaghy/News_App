import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/Cubits/GetNewsCubit/get_news_cubit.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/screen2.dart';
import 'package:flutter_application_1/screens/details_screen.dart';
import 'package:flutter_application_1/screens/screen4.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetNewsCubit>(
            create: (context) => GetNewsCubit()..getNews()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
