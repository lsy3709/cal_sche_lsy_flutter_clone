import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import '../model/schedule_model.dart';

class ScheduleRepository {
  final _dio = Dio();
  final _targetUrl = 'http://${Platform.isAndroid ? '192.168.219.200' : 'localhost'}:3000/schedule';  // Android에서는 192.168.219.200가 localhost에 해당됩니다.

  // 샘플 , http://localhost:3000/schedule?date=20220102
  Future<List<ScheduleModel>> getSchedules({
    required DateTime date,
  }) async {
    final resp = await _dio.get(
      _targetUrl,
      queryParameters: {  // ➊ Query Parameter
        'date':
        '${date.year}${date.month.toString().padLeft(2, '0')}${date.day.toString().padLeft(2, '0')}',
      },
    );

    return resp.data  // ➋ 모델 인스턴스로 데이터 매핑하기
        .map<ScheduleModel>(
          (x) => ScheduleModel.fromJson(
        json: x,
      ),
    )
        .toList();
  }

  Future<String> createSchedule({
    required ScheduleModel schedule,
  }) async {
    final json = schedule.toJson();

    final resp = await _dio.post(_targetUrl, data: json);

    return resp.data?['id'];
  }

  Future<String> deleteSchedule({
    required String id,
  }) async {
    final resp = await _dio.delete(_targetUrl, data: {
      'id': id,  // 삭제할 ID값
    });

    return resp.data?['id'];  // 삭제된 ID값 반환
  }
}
