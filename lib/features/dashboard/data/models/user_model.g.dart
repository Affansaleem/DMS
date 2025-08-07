// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  countryCode: json['countryCode'] as String,
  dob: DateTime.parse(json['dob'] as String),
  password: json['password'] as String,
  email: json['email'] as String,
  department: json['department'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'countryCode': instance.countryCode,
      'dob': instance.dob.toIso8601String(),
      'password': instance.password,
      'email': instance.email,
      'department': instance.department,
    };
