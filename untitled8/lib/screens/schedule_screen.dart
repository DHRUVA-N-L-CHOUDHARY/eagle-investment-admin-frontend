import 'package:flutter/material.dart';

import 'package:untitled8/widgets/Custom_schedule_screen_date.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: const[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomScheduleScreenWidget(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomScheduleScreenWidget(),
          ),
        ],
      ),
    ));
  }
}
