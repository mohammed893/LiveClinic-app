// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telemedicine/presentation/cubit/cubit.dart';
import 'package:telemedicine/core/maindoc.dart';
import 'package:telemedicine/presentation/doctor/home/doctorhome.dart';
import 'package:telemedicine/presentation/patient/booking/payment.dart';
import 'package:telemedicine/presentation/patient/booking/succesfull_booking.dart';
import 'package:telemedicine/presentation/patient/explorescreen/explorescreen.dart';
import 'package:telemedicine/presentation/patient/mainpaitient.dart';


void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ClinicCubit>(
          create: (BuildContext context) => ClinicCubit(),
        ),
       
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telemedicine App',
      home: const 
      DoctorMainScreen(),
      //PatientMainScreen()
    );
  }
}