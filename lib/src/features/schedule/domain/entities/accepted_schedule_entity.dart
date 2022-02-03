import 'package:equatable/equatable.dart';
import 'package:willow_care/src/core/utils/helpers/date_formatter.dart';

class AcceptedScheduleEntity extends Equatable {
  final String? name;
  final String? image;
  final String? jobDescription;
  final int? status;
 final String? date;

  AcceptedScheduleEntity({
    this.name,
    this.image,
    this.jobDescription,
    this.status,
    this.date,
  }) ;

  @override
  List<Object?> get props => [
        name,
        image,
        jobDescription,
        status,
        date,
      ];
}
