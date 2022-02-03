import 'package:dartz/dartz.dart';
import 'package:willow_care/src/core/common/data/models/error_model/error_model.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<Either<ErrorModel, ProfileEntity>> getProfileData();
}
