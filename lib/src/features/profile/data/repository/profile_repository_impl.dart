import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:willow_care/src/core/common/data/models/error_model/error_model.dart';
import 'package:willow_care/src/core/utils/helpers/error_parser.dart';
import 'package:willow_care/src/features/profile/data/data_source/remote/profile_data_source.dart';

import 'package:willow_care/src/features/profile/data/models/profile_model.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';
import 'package:willow_care/src/features/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileDataSource profileDataSource;

  ProfileRepositoryImpl({
    required this.profileDataSource,
  });

  @override
  Future<Either<ErrorModel, ProfileEntity>> getProfileData() async {
    try {
      final data = await profileDataSource.getProfileData();

      final ProfileModel profileModel = ProfileModel.fromJson(data);

      ProfileEntity profileEntity = profileModel.toProfileEntity();

      return Right(
        profileEntity,
      );
    } on DioError catch (error, stackTrace) {
      return Left(errorParse(error, stackTrace));
    }
  }
}
