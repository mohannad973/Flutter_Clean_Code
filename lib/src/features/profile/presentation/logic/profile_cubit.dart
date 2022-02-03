import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';
import 'package:willow_care/src/features/profile/domain/usecases/get_profile.dart';
import 'package:willow_care/src/features/profile/presentation/logic/profile_state.dart';

import '../../../../app/logic/app_bloc.dart';
import '../../../../core/common/data/models/error_model/error_model.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final AppBloc appCubit;
  final GetProfile getProfile;

  ProfileCubit({
    required this.appCubit,
    required this.getProfile,
  }) : super(const ProfileState.initial()) {
    getData();
  }

  Future<void> getData() async {
    emit(const ProfileState.loading());

    Either<ErrorModel, ProfileEntity> data = await getProfile();

    data.fold(
        (ErrorModel error) => emit(ProfileState.error(error)),
        (ProfileEntity profileEntity) =>
            emit(ProfileState.successfullyRetrievedData(profileEntity)));
  }
}
