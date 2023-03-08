import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  static NewsCubit get(context) => BlocProvider.of(context);
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
        label: 'Bussiness'),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.business_sharp,
        ),
        label: 'Bussiness'),
  ];
}
