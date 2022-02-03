import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_list_entity.dart';

import '../../../../core/common/data/models/error_model/error_model.dart';

part 'schedule_state.freezed.dart';

@freezed
abstract class ScheduleState with _$ScheduleState {
  const factory ScheduleState.initial() = _Initial;

  const factory ScheduleState.loading() = _Loading;

  const factory ScheduleState.successfullyRetrievedData(
    AcceptedScheduleListEntity acceptedScheduleListEntity,
  ) = _SuccessfulllyRetrivedData;

  const factory ScheduleState.error(ErrorModel? error) = _Error;
}
