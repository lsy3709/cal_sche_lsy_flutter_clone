import 'package:calendar_scheduler_lsy/widgets/column_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/gesture_detector_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/icon_button_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/outlined_button_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/padding_widget.dart';
import 'package:calendar_scheduler_lsy/widgets/row_widget.dart';
import 'package:flutter/material.dart';

class ExpandedWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
