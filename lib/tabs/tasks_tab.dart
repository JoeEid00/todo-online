import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../task_item.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate:DateTime.now(),//todaydate
          firstDate:DateTime.now().subtract(Duration(days:365*100)),//fromtodaytoonepreviousyear
          lastDate:DateTime.now().add(Duration(days:365*100)),//fromtodaytoonenextyear
          onDateSelected: (date) => print(date),
          leftMargin: 80,
          monthColor: AppColors.grey,
          dayColor: AppColors.Primary,
          activeDayColor: Colors.white,
          activeBackgroundDayColor: AppColors.Primary,
          dotColor: Color(0xFF333A47),
          // selectableDayPredicate: (date) => date.day != 23,
          locale: 'ar',
        ),
          // child: ListView.builder(itemBuilder: (context, index) {
          //   return TaskItem();
          // },
         SizedBox(height: 22),

      Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 12,
            ),
            itemBuilder: (context, index) {
            return TaskItem();
          },

            itemCount: 30,
          ),
        )
      ],


    );
  }
}
