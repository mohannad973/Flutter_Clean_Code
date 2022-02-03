import 'package:dartz/dartz.dart';

import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_list_entity.dart';
import 'package:willow_care/src/features/schedule/domain/repositories/accepted_schedule_repository.dart';

import '../../../../core/common/data/models/error_model/error_model.dart';

class GetAcceptedData {
  final AcceptedScheduleRepository repository;

  GetAcceptedData({required this.repository});

  @override
  Future<Either<ErrorModel, AcceptedScheduleListEntity>> call() async {
    return repository.getAcceptedData();
  }
}
