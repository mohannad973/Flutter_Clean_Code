// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accepted_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AcceptedScheduleModel _$AcceptedScheduleModelFromJson(
        Map<String, dynamic> json) =>
    AcceptedScheduleModel(
      image: json['image'] as String?,
      name: json['name'] as String?,
      jobDescription: json['job_description'] as String?,
      date: json['date'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$AcceptedScheduleModelToJson(
        AcceptedScheduleModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'job_description': instance.jobDescription,
      'date': instance.date,
      'status': instance.status,
    };
