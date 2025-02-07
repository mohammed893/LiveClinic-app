// presentation/patient/explorescreen/explorescreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telemedicine/core/apptheme/components/custom_search_bar.dart';
import 'package:telemedicine/presentation/patient/booking/appointment_payment.dart';
import '../../../core/apptheme/components/custom_appbar.dart';
import '../../cubit/cubit.dart';
import '../../cubit/states.dart';

class Explorescreen extends StatelessWidget {
  const Explorescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the floating is only for testing appearance of payment sheets.
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF008080),
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const ChooseAppointmentSheet(), 
                     // Payment (),
              );
            },
          );
        },
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Search(searchController: TextEditingController()),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1.0,
                children: [
                  _buildGreyBox(isTall: true),
                  _buildGreyBox(),
                  _buildGreyBox(),
                  _buildGreyBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGreyBox({bool isTall = false}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 137, 137, 137),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}