import 'package:equatable/equatable.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_entity.dart';

class AcceptedScheduleListEntity extends Equatable {
  final List<AcceptedScheduleEntity> acceptedList;

  const AcceptedScheduleListEntity({
    required this.acceptedList,
  });

  @override
  List<Object?> get props => [
        acceptedList,
      ];
}
