part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}
class NewsNavBottom extends NewsState{}
class BussinessLoading extends NewsState{}
class Bussinesssuccess extends NewsState{}
class BussinessFailed extends NewsState{}


