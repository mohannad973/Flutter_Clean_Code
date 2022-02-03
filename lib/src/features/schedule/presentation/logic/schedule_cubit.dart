import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_list_entity.dart';
import 'package:willow_care/src/features/schedule/domain/usecases/get_accepted_data.dart';
import 'package:willow_care/src/features/schedule/presentation/logic/schedule_state.dart';

import '../../../../app/logic/app_bloc.dart';
import '../../../../core/common/data/models/error_model/error_model.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  final AppBloc appCubit;
  final GetAcceptedData getAcceptedData;

  ScheduleCubit({
    required this.appCubit,
    required this.getAcceptedData,
  }) : super(const ScheduleState.initial()) {
    getData();
  }

  Future<void> getData() async {
    emit(const ScheduleState.loading());

    Either<ErrorModel, AcceptedScheduleListEntity> data =
        await getAcceptedData();

    data.fold(
        (ErrorModel error) => emit(ScheduleState.error(error)),
        (AcceptedScheduleListEntity acceptedScheduleList) => emit(
            ScheduleState.successfullyRetrievedData(acceptedScheduleList)));
  }
}
