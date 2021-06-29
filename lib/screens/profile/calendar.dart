import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class UserCalendar extends StatefulWidget {
  @override
  
  User_CalendarState createState() => User_CalendarState();
}


class User_CalendarState extends State<UserCalendar> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
                calendarFormat: format,
                focusedDay: selectedDay,
                firstDay: DateTime.utc(2020, 01, 01),
                lastDay: DateTime.utc(2035, 12, 31),
                onFormatChanged: (CalendarFormat _format) {
                  setState(() {
                    format = _format;
                  });
                },
                daysOfWeekVisible: true,
                onDaySelected: (DateTime selectDay, DateTime focusDay) {
                  setState(() {
                    selectedDay = selectDay;
                    focusedDay = focusDay;
                  });
                  print(focusedDay);
                },
                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarStyle: CalendarStyle(
                  isTodayHighlighted: true,
                  selectedTextStyle: TextStyle(color: Colors.white),
                  selectedDecoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  todayDecoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  defaultDecoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                selectedDayPredicate: (DateTime date){
                  return isSameDay(selectedDay, date);
                },
              );
  }
}