import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import '../model/schedule_model.dart';

class ScheduleRepository {
  final _dio = Dio();
  final _targetUrl = 'http://${Platform.isAndroid ? '192.168.219.200' : 'localhost'}:3000/schedule';  // Android에서는 192.168.219.200가 localhost에 해당됩니다.

  // 샘플 , http://localhost:3000/schedule?date=20220102
  Future<List<ScheduleModel>> getSchedules({
    required String accessToken,
    required DateTime date,
  }) async {
    final resp = await _dio.get(
      _targetUrl,
      queryParameters: {
        'date': '${date.year}${date.month.toString().padLeft(2, '0')}${date.day.toString().padLeft(2, '0')}',
      },
      options: Options(
        headers: {
          'authorization': 'Bearer $accessToken',
        },
      ),
    );

    return resp.data
        .map<ScheduleModel>(
          (x) => ScheduleModel.fromJson(
        json: x,
      ),
    )
        .toList();
  }

  Future<String> createSchedule({
    required String accessToken,
    required ScheduleModel schedule,
  }) async {
    final json = schedule.toJson();

    final resp = await _dio.post(
      _targetUrl,
      data: json,
      options: Options(
        headers: {
          'authorization': 'Bearer $accessToken',
        },
      ),
    );

    return resp.data?['id'];
  }

  Future<String> deleteSchedule({
    required String accessToken,
    required String id,
  }) async {
    final resp = await _dio.delete(
      _targetUrl,
      data: {
        'id': id,
      },
      options: Options(
        headers: {
          'authorization': 'Bearer $accessToken',
        },
      ),
    );

    return resp.data?['id'];
  }
}
