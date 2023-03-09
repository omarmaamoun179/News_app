import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/model/news_model.dart';
import 'package:news_app/services/api_service.dart';

part 'bussiness_state.dart';

class BussinessCubit extends Cubit<BussinessState> {
  NewsModel? newsModel;
  String? category;
  ApiServcies apiServcies;
  BussinessCubit(this.apiServcies) : super(BussinessInitial());
  void getBussiness({required String category}) async {
    emit(BussinessLoading());
    try {
      newsModel = await apiServcies.getNews(category: category);
    } catch (e) {
      print(e.toString());
      emit(BussinessFailed());
    }
  }
}
