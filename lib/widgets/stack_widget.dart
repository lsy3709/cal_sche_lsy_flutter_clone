import 'package:calendar_scheduler_lsy/widgets/column_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/expanded_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/gesture_detector_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/icon_button_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/outlined_button_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/padding_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/row_widget.dart';
import 'package:flutter/material.dart';

class StackWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
              ),
              Container(
                height: 250.0,
                width: 250.0,
                color: Colors.yellow,
              ),
              Container(
                height: 200.0,
                width: 200.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
