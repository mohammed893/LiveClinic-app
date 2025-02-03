 abstract class ClinicStates{}

class ClinicInitialStates extends ClinicStates {}

class NewsGetSearchLoadingState extends ClinicStates{}

class GetSearchSuccessState extends ClinicStates{}

class GetSearchErrorState extends ClinicStates{
  final String error;
GetSearchErrorState(this.error);
}
