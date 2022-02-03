import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../../core/utils/managers/http/http_manager.dart';
import '../../../../../core/utils/managers/http/http_methods.dart';

abstract class ProfileDataSource {
  Future<Map<String, dynamic>> getProfileData();
}

class ProfileDataSourceImpl implements ProfileDataSource {
  final HttpManager httpManager;

  ProfileDataSourceImpl({required this.httpManager});

  @override
  Future<Map<String, dynamic>> getProfileData() async {
    final Response response = await httpManager.request(
      method: HttpMethods.Get,
      path: "b639cad7-5caa-41b5-be28-587d1b2e5276",
    );
    return json.decode(response.data as String) as Map<String, dynamic>;
  }
}
