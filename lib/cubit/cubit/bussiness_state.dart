part of 'bussiness_cubit.dart';

@immutable
abstract class BussinessState {}

class BussinessInitial extends BussinessState {}

class BussinessLoading extends BussinessState {}

class BussinessFailed extends BussinessState {}
