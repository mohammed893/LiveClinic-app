import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liveclinic/Authontication/Signup.dart';
import 'package:liveclinic/Authontication/login.dart';
import 'package:liveclinic/Authontication/onboarding.dart';
import 'package:liveclinic/cubit/cubit.dart';
import 'package:liveclinic/cubit/states.dart';
import 'package:liveclinic/screens/notifications.dart';
import 'package:liveclinic/screens/patient_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> ClinicCubit())
      ],

      child: BlocConsumer<ClinicCubit,ClinicStates>(
        listener: (context, state){},
        builder: (context, state){
          return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: OnBoarding()
            //OnBoarding()
          );
        },

      ),
    );
  }
}


