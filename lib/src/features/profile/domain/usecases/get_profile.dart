import 'package:dartz/dartz.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';
import 'package:willow_care/src/features/profile/domain/repository/profile_repository.dart';

import '../../../../core/common/data/models/error_model/error_model.dart';

class GetProfile {
  final ProfileRepository repository;

  GetProfile({required this.repository});

  @override
  Future<Either<ErrorModel, ProfileEntity>> call() async {
    return repository.getProfileData();
  }
}
