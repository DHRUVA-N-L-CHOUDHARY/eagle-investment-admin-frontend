import 'package:flutter/material.dart';
import 'package:untitled8/widgets/Custom_schedule_container.dart';

class CustomScheduleScreenWidget extends StatelessWidget {
  const CustomScheduleScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 20.0),
      child: Column(children: [
        Container(
          decoration: BoxDecoration(color: Colors.grey.shade400),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Date",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  "21-01-2023",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomScheduleWidget(),
        CustomScheduleWidget(),
        CustomScheduleWidget(),
        CustomScheduleWidget(),
      ]),
    );
  }
}
