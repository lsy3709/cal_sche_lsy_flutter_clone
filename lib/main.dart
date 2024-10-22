import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(2000, 1, 1),
        lastDay: DateTime(2500, 12, 31),
        // 선택된 날짜를 인식하는 함수,
        selectedDayPredicate: (DateTime day) {
          final now = DateTime.now();
          return DateTime(day.year, day.month, day.day).isAtSameMomentAs(
            DateTime(
              now.year,
              now.month,
              now.day,
            ),
          );
        },
        // 날짜가 선택시 실행할 함수
        onDaySelected: (DateTime selectedDay, DateTime focusedDay){

        },
        // 날짜 페이지가 변경 될 경우 실행할 함수
        onPageChanged: (DateTime focusedDay) {

        },
        // 기간 선택 모드
        rangeSelectionMode: RangeSelectionMode.toggledOff,
        //기간이 선택 될 경우 실행할 함수
        onRangeSelected: (DateTime? start, DateTime? end, DateTime focusedDay){

        },
      ),
    ),
  ));
}
