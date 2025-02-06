// presentation/patient/mainpaitient.dart

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telemedicine/core/apptheme/assets.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/components/custom_appbar.dart';
import 'package:telemedicine/presentation/patient/chatbot.dart/chatbotscreen.dart';
import 'package:telemedicine/presentation/patient/explorescreen/explorescreen.dart';
import 'package:telemedicine/presentation/cubit/cubit.dart';
import 'package:telemedicine/presentation/cubit/states.dart';
import 'package:telemedicine/presentation/patient/notifications/notifications.dart';
import 'package:telemedicine/presentation/patient/patienthome/patient_home.dart';

class PatientMainScreen extends StatelessWidget {
  const PatientMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClinicCubit, ClinicStates>(
      builder: (context, state) {
        final cubit = ClinicCubit.get(context);

        final List<Widget> _screens = [
          PatientHome(),
          const Notifications(),
          const Explorescreen(),
        ];

        final List<Widget> _items = [
          const ImageIcon(AssetImage(Assets.homedefault), size: 25, color: Colors.black),
          const ImageIcon(AssetImage(Assets.Chatbotdefault), size: 25, color: Colors.black),
          const ImageIcon(AssetImage(Assets.Belldefault), size: 25, color: Colors.black),
          const ImageIcon(AssetImage(Assets.searchdefault), size: 25, color: Colors.black),
        ];

        return Scaffold(
          appBar: appbar(),
          body:  _screens[cubit.currentIndex > 0 ? cubit.currentIndex - 1 : cubit.currentIndex], 
          // why ?
          // chatbot is not an item of the list, so 
          //  index 0 in BNVB is the same as item 0 in screens list which is home screen
          //  index 1 in BNVB for chatbot navigation
          //  index 2 in BNVB displays item 1 in the screens list (notifications)
          //  index 3 in BNVB displays item 2 in the screens list (explore)
          // kollo 3shan el ui <3

          bottomNavigationBar: CurvedNavigationBar(
            items: _items,
            index: cubit.currentIndex,
            backgroundColor: AppColors.white,
            color: AppColors.lightgrey,
            buttonBackgroundColor: AppColors.Blue,
            height: 70,
            onTap: (index) {
              if (index == 1) {
                // if chatbot is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chatbotscreen()),
                );
              } else {
                // for other items update the index
                cubit.changeBottomNav(index);
              }
            },
          ),
        );
      },
    );
  }
}