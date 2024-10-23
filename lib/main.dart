
import 'package:calendar_scheduler_lsy/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  //Flutter에서 위젯 트리나 앱 초기화를 수행할 때,
  // 특정 작업이 UI 작업 전에 반드시 호출되어야 하는 경우가 있습니다.
  // 특히 비동기 작업을 수행할 때, Flutter의 바인딩을 초기화하여
  // Flutter 엔진과 위젯 트리의 상호작용을 가능하게 해야 합니다.
  // 이 메서드는 Flutter가 앱을 실행하기 전에
  // 위젯 바인딩을 초기화하여 안전하게 작업을 수행할 수 있도록 보장합니다.
  WidgetsFlutterBinding.ensureInitialized();

  // initializeDateFormatting()는 날짜 형식을 초기화하는 함수로,
  // 다양한 지역(Locales)에 맞는 날짜 및 시간 형식을 사용하기 위해 필요합니다.
  // 특히 Flutter 애플리케이션에서 intl 패키지를 사용하여 날짜와 시간을 다룰 때,
  // 해당 지역에 맞는 날짜 형식 설정이 필요할 수 있습니다.
  // 이 함수는 날짜 형식을 위한 지역화 데이터를 초기화해줌
  await initializeDateFormatting();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}