import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'accepted_schedule_model.g.dart';

@JsonSerializable()
class AcceptedScheduleModel extends Equatable {
  final String? image;

  final String? name;
  @JsonKey(name: 'job_description')
  final String? jobDescription;
  final String? date;

  final int? status;

  const AcceptedScheduleModel({
    this.image,
    this.name,
    this.jobDescription,
    this.date,
    this.status,
  });

  factory AcceptedScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$AcceptedScheduleModelFromJson(json);

  Map<String, dynamic> toJson() => _$AcceptedScheduleModelToJson(this);

  @override
  List<Object?> get props {
    return [
      image,
      name,
      jobDescription,
      date,
      status,
    ];
  }
}
