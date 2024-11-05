import 'package:calendar_scheduler_lsy/widgets/column_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/expanded_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/gesture_detector_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/icon_button_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/outlined_button_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/padding_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/row_widget.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          // 클릭했을 때 실행할 함수
          onPressed: () {},
          child: Text('클릭'),
        ),
        body: Container(),
      ),
    );
  }
}
