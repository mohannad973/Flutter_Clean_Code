import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel extends Equatable {
  final String? image;

  final String? name;
  @JsonKey(name: 'description')
  final String? description;

  @JsonKey(name: 'profile_view')
  final int? profileView;

  @JsonKey(name: 'patients_number')
  final int? patientsNumber;

  final int? experience;

  @JsonKey(name: 'basic_info')
  final String? basicInfo;

  final List<String>? certificates;
  final List<String>? companies;

  const ProfileModel({
    this.image,
    this.name,
    this.description,
    this.basicInfo,
    this.certificates,
    this.companies,
    this.experience,
    this.patientsNumber,
    this.profileView,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);

  ProfileEntity toProfileEntity() {
    return ProfileEntity(
      name: name,
      image: image,
      description: description,
      basicInfo: basicInfo,
      certificates: certificates,
      companies: companies,
      profileViews: profileView,
      patientsNumber: patientsNumber,
      experience: experience,
    );
  }

  @override
  List<Object?> get props {
    return [
      image,
      name,
      description,
      basicInfo,
      certificates,
      companies,
      experience,
      patientsNumber,
      profileView,
    ];
  }
}
