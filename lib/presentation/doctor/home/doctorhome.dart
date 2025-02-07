// presentation/doctor/home/doctorhome.dart
import 'package:flutter/material.dart';
import 'package:telemedicine/core/apptheme/colors.dart';
import 'package:telemedicine/data/models/reportdata.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Upcoming',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('show all', style: TextStyle(color: AppColors.teal)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildSessionCard(context, 'Sessions', 'Today at 2:45 PM'),
                    const SizedBox(width: 10),
                    _buildSessionCard(context, 'Sessions', 'Tomorrow at 3:00 PM', backgroundColor: const Color(0xFFF0F2F5)), 
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'History',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('show all', style: TextStyle(color: AppColors.teal)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildHistoryCard('Patient name', '10:00 AM - 11:00 PM', '5.0'),
                    const SizedBox(width: 10),
                    _buildHistoryCard('Patient name', '11:30 AM - 12:30 PM', '4.8'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Reports',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('show all', style: TextStyle(color: AppColors.teal)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ReportCard(report: ReportData(patientName: 'Patient name', sessionDate: 'Session date')),
          ],
        ),
      ),
    );
  }

  Widget _buildSessionCard(BuildContext context, String title, String time, {Color backgroundColor = const Color.fromARGB(255, 202, 237, 255)}) {
    return SizedBox(
      width: 200.0,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15.0), 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Text(time, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 65.0, 
                height: 25.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), 
                    ),
                  ),
                  child: const Text(
                    'VISIT',
                    style: TextStyle(color: AppColors.teal, fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryCard(String patientName, String time, String rating) {
    return SizedBox(
      width: 180.0,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white, // History cards are now white
          borderRadius: BorderRadius.circular(15.0), // More rounded corners
          boxShadow: [ // add shadow to raise up the card
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              patientName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.access_time, size: 14, color: AppColors.Gray),
                const SizedBox(width: 3),
                Text(time, style: const TextStyle(color: AppColors.Gray)),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.star, size: 14, color: Colors.amber),
                const SizedBox(width: 3),
                Text(rating, style: const TextStyle(color: AppColors.Gray)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class ReportCard extends StatelessWidget {
  final ReportData report;
  const ReportCard({Key? key, required this.report}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightgrey,
        borderRadius: BorderRadius.circular(30.0), 
        boxShadow: [ 
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 7, 
            offset: const Offset(0, 4), 
          ),
        ],
      ),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          const Icon(Icons.insert_drive_file, size: 30, color: AppColors.Gray),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                report.patientName,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(report.sessionDate, style: const TextStyle(color: AppColors.Gray)),
            ],
          ),
        ],
      ),
    );
  }
}