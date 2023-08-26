import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Models/get_news_model.dart';
import '../../Repository/get_new_repo.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  GetNewsRepo newsRepo = GetNewsRepo();
  GetNewsModel? response;

  getNews() async {
    emit(GetNewsLoading());

    try {
      await newsRepo.getNews().then((value) {
        if (value != null) {
          response = value;
          emit(GetNewsSuccess());
        } else {
          print(value);
          emit(GetNewsError());
        }
      });
    } catch (error) {
      print(error);
      emit(GetNewsError());
    }
  }
}
