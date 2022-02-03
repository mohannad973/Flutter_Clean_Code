import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';

import '../../../../core/common/data/models/error_model/error_model.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.loading() = _Loading;

  const factory ProfileState.successfullyRetrievedData(
      ProfileEntity profileEntity,
      ) = _SuccessfulllyRetrivedData;

  const factory ProfileState.error(ErrorModel? error) = _Error;
}
