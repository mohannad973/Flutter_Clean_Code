// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      image: json['image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      basicInfo: json['basic_info'] as String?,
      certificates: (json['certificates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companies: (json['companies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      experience: json['experience'] as int?,
      patientsNumber: json['patients_number'] as int?,
      profileView: json['profile_view'] as int?,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'profile_view': instance.profileView,
      'patients_number': instance.patientsNumber,
      'experience': instance.experience,
      'basic_info': instance.basicInfo,
      'certificates': instance.certificates,
      'companies': instance.companies,
    };
