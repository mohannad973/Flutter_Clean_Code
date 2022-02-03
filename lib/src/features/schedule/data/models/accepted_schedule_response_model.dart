import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'accepted_schedule_model.dart';


part 'accepted_schedule_response_model.g.dart';

@JsonSerializable()
class AcceptedScheduleResponseModel extends Equatable {

  final List<AcceptedScheduleModel>? data;

  const AcceptedScheduleResponseModel({ this.data});

  factory AcceptedScheduleResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AcceptedScheduleResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AcceptedScheduleResponseModelToJson(this);


  @override
  List<Object?> get props => [data];
}
