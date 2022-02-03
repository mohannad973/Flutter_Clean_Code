import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String? name;
  final String? image;
  final String? description;
  final String? basicInfo;
  final int? profileViews;
  final int? patientsNumber;
  final int? experience;
  final List<String>? certificates;
  final List<String>? companies;
  late String profileViewCount;

  ProfileEntity({
    this.name,
    this.image,
    this.basicInfo,
    this.patientsNumber,
    this.experience,
    this.companies,
    this.certificates,
    this.description,
    this.profileViews,
  });

  @override
  List<Object?> get props => [
        name,
        image,
        patientsNumber,
        experience,
        companies,
        certificates,
        description,
        profileViews,
        basicInfo,
      ];
}
