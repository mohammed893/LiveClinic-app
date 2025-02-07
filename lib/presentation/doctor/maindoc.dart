// presentation/patient/maindoc.dart
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telemedicine/core/apptheme/assets.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/core/apptheme/components/custom_appbar.dart';
import 'package:telemedicine/presentation/cubit/cubit.dart';
import 'package:telemedicine/presentation/cubit/states.dart';
import 'package:telemedicine/presentation/doctor/home/doctorhome.dart';

class DoctorMainScreen extends StatelessWidget {
  const DoctorMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClinicCubit, ClinicStates>(
      builder: (context, state) {
        final cubit = ClinicCubit.get(context);

        final List<Widget> _screens = [
          const DoctorHomeScreen(),
          const Center(child: Text("Notifications Screen")),
          const Center(child: Text("Search Screen")),
        ];

        final List<Widget> _items = [
          ImageIcon(
            AssetImage(cubit.currentIndex == 0 ? Assets.Homesellected : Assets.homedefault),
            size: 25,
            color: Colors.black,
          ),
          ImageIcon(
            AssetImage(cubit.currentIndex == 1 ? Assets.Bellsellected : Assets.Belldefault),
            size: 25,
            color: Colors.black,
          ),
          ImageIcon(
            AssetImage(cubit.currentIndex == 2 ? Assets.Searchsellected : Assets.searchdefault ),
            size: 25,
            color: Colors.black,
          ),
        ];

        return Scaffold(
          backgroundColor: AppColors.lightgrey,
          appBar: appbar(),
          body: _screens[cubit.currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            items: _items,
            index: cubit.currentIndex,
            backgroundColor: AppColors.lightgrey,
            color: AppColors.white,
            buttonBackgroundColor: AppColors.Blue,
            height: 70,
            onTap: (index) {
              cubit.changeBottomNav(index);
            },
          ),
        );
      },
    );
  }
}