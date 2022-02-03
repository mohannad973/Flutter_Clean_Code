import 'package:dartz/dartz.dart';
import 'package:willow_care/src/core/common/data/models/error_model/error_model.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_list_entity.dart';

abstract class AcceptedScheduleRepository {
  Future<Either<ErrorModel, AcceptedScheduleListEntity>> getAcceptedData();
}
