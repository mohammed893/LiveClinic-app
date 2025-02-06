// presentation/cubit/cubit.dart
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telemedicine/data/Remote/Network/dio_helper.dart';
import 'package:telemedicine/presentation/cubit/states.dart';

class ClinicCubit extends Cubit<ClinicStates> {
  ClinicCubit() : super(ClinicInitialStates());
  static ClinicCubit get(context) => BlocProvider.of(context);

  List<dynamic> search = [];
  void getSearch(String value) {
    emit(NewsGetSearchLoadingState());
    DioHelper.getData(url: '',
    ).then((value){
      search = value.data[''];
      print(search.length);
      emit(GetSearchSuccessState());

    }).catchError((error){
      print(error.toString());
      emit(GetSearchErrorState(error.toString()));

    });
  }

  // Bottom Navigation State
  int currentIndex = 0;

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(AppBottomNavChangedState(currentIndex));
  }
}