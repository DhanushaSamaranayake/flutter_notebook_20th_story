import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:date_picker_timeline/extra/style.dart';
import 'package:flutter/material.dart';

class TaskSchedulePage extends StatefulWidget {
  const TaskSchedulePage({Key? key}) : super(key: key);

  @override
  State<TaskSchedulePage> createState() => _TaskSchedulePageState();
}

class _TaskSchedulePageState extends State<TaskSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                child: Icon(Icons.arrow_back_ios_new),
                foregroundColor: Colors.white,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "All task schedule",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "24 Sept 2022",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "15 Active task",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      child: Icon(Icons.calendar_month_outlined),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepOrange[300],
                    )
                  ],
                ),
              ),
              DatePicker(
                DateTime.now(),
                initialSelectedDate: DateTime.now(),
                // height: 84,
                selectedTextColor: Colors.orangeAccent,
                deactivatedColor: Colors.white,
                selectionColor: Colors.white.withOpacity(0.2),
                dateTextStyle: defaultDateTextStyle.copyWith(
                  color: Colors.white,
                ),
                dayTextStyle: defaultDayTextStyle.copyWith(color: Colors.white),
                monthTextStyle: defaultMonthTextStyle.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, _) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "08.30",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Visualize user flow into\nattractive product designs",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.edit,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
              itemCount: 10,
            ),
          ),
        )
      ],
    );
  }
}
