// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accepted_schedule_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptedScheduleResponseModel _$AcceptedScheduleResponseModelFromJson(
        Map<String, dynamic> json) =>
    AcceptedScheduleResponseModel(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => AcceptedScheduleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AcceptedScheduleResponseModelToJson(
        AcceptedScheduleResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
