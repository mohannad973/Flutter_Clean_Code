import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:willow_care/src/core/common/data/models/error_model/error_model.dart';
import 'package:willow_care/src/core/utils/helpers/error_parser.dart';
import 'package:willow_care/src/features/schedule/data/datasources/remote/accepted_schedule_data_source.dart';
import 'package:willow_care/src/features/schedule/data/mappers/accepted_schedule_mapper.dart';
import 'package:willow_care/src/features/schedule/data/models/accepted_schedule_response_model.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_list_entity.dart';
import 'package:willow_care/src/features/schedule/domain/repositories/accepted_schedule_repository.dart';

class AcceptedScheduleRepositoryImpl implements AcceptedScheduleRepository {
  AcceptedScheduleDataSource acceptedScheduleDataSource;

  AcceptedScheduleRepositoryImpl({
    required this.acceptedScheduleDataSource,
  });

  @override
  Future<Either<ErrorModel, AcceptedScheduleListEntity>>
      getAcceptedData() async {
    try {
      final data = await acceptedScheduleDataSource.getData();

      final AcceptedScheduleResponseModel acceptedScheduleResponseModel =
          AcceptedScheduleResponseModel.fromJson(data);

      AcceptedScheduleMapper acceptedScheduleMapper = AcceptedScheduleMapper(
          acceptedList: acceptedScheduleResponseModel.data ?? []);

      final AcceptedScheduleListEntity acceptedScheduleListEntity =
          AcceptedScheduleListEntity(
              acceptedList: acceptedScheduleMapper.toAcceptedList());

      return Right(
        acceptedScheduleListEntity,
      );
    } on DioError catch (error, stackTrace) {
      return Left(errorParse(error, stackTrace));
    }
  }
}
