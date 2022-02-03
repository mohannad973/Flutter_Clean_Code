import 'package:willow_care/src/features/schedule/data/models/accepted_schedule_model.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_entity.dart';

class AcceptedScheduleMapper {
  List<AcceptedScheduleModel> acceptedList;

  AcceptedScheduleMapper({
    required this.acceptedList,
  });

  List<AcceptedScheduleEntity> toAcceptedList() {
    final List<AcceptedScheduleEntity> items =
    List<AcceptedScheduleEntity>.generate(acceptedList.length, (int index) {
      final AcceptedScheduleModel? item = acceptedList[index];
      return AcceptedScheduleEntity(
        image: item?.image ?? '',
        name: item?.name ?? '',
        jobDescription: item?.jobDescription ?? '',
        date: item?.date,
        status: item?.status ?? 0,


      );
    });
    return items;
  }
}
