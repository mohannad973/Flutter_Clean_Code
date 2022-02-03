import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../../core/utils/managers/http/http_manager.dart';
import '../../../../../core/utils/managers/http/http_methods.dart';

abstract class AcceptedScheduleDataSource {
  Future<Map<String, dynamic>> getData();
}

class AcceptedScheduleDataSourceImpl implements AcceptedScheduleDataSource {
  final HttpManager httpManager;

  AcceptedScheduleDataSourceImpl({required this.httpManager});

  @override
  Future<Map<String, dynamic>> getData() async {
    final Response response = await httpManager.request(
      method: HttpMethods.Get,
      path: "1ebea14f-008a-44b4-8ec3-f68ac4c7a299",
    );
    return json.decode(response.data as String) as Map<String, dynamic>;
  }
}
