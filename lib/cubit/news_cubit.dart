import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/screens/bussiness.dart';
import 'package:news_app/screens/science.dart';
import 'package:news_app/screens/sports.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomNav = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.business_sharp,
        ),
        label: 'Bussiness'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.sports,
        ),
        label: 'sports'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.science,
        ),
        label: 'science'),
  ];
  List<Widget> screens = const [
    BussinesScreen(), 
    SportScreen(),
    ScienceScreen(),
  ];
  void changeScreen(int index) {
    currentIndex = index;
    emit(NewsNavBottom());
  }
}
