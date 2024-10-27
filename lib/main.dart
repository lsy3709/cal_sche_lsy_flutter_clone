import 'package:calendar_scheduler_lsy/provider/schedule_provider.dart';
import 'package:calendar_scheduler_lsy/repository/schedule_repository.dart';
import 'package:calendar_scheduler_lsy/screen/home_screen.dart';
import 'package:calendar_scheduler_lsy/screen/home_screen_ch18.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import 'database/drift_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  final database = LocalDatabase(); // ➊ 데이터베이스 생성

  final repository = ScheduleRepository();
  final scheduleProvider = ScheduleProvider(repository: repository);

  GetIt.I.registerSingleton<LocalDatabase>(database); // ➋ GetIt에

  runApp(
    ChangeNotifierProvider(
      create: (_) => scheduleProvider,
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}
