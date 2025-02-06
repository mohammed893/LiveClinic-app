// presentation/booking/appointment_payment.dart
import 'package:flutter/material.dart';

class ChooseAppointmentSheet extends StatelessWidget {
  const ChooseAppointmentSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: const BoxDecoration( 
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8,
            offset: Offset(0, -2),
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Choose an appointment',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          _buildAppointmentOption(date: 'Sun, 27 June', duration: 'duration: 25 min', isSelected: true),
          const SizedBox(height: 10),
          _buildAppointmentOption(date: 'Sun, 27 June', duration: 'duration: 25 min', isSelected: false),
          const SizedBox(height: 10),
          _buildAppointmentOption(date: 'Sun, 27 June', duration: 'duration: 25 min', isSelected: false),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 18),
              backgroundColor: const Color(0xFF008080),
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Continue',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppointmentOption({required String date, required String duration, required bool isSelected}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: Colors.teal,
                    ),
                    const SizedBox(width: 5),
                    Text(date),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 16,
                      color: Colors.teal,
                    ),
                    const SizedBox(width: 5),
                    Text(duration),
                  ],
                ),
              ],
            ),
            Radio<bool>(
              value: true,
              groupValue: isSelected,
              onChanged: (bool? value) {},
              activeColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}