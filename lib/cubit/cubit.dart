import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liveclinic/Remote/Network/dio_helper.dart';
import 'package:liveclinic/cubit/states.dart';

class ClinicCubit extends Cubit<ClinicStates>{
  ClinicCubit(): super( ClinicInitialStates()){}
  static ClinicCubit get(context) =>BlocProvider.of(context);


  List<dynamic> search = [];
  void getSearch(String value){
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
}