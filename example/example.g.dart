// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SampleResponse _$SampleResponseFromJson(Map<String, dynamic> json) {
  return SampleResponse()
    ..carType =
        json['carType'] == null ? null : CarType.fromJson(json['carType']);
}

Map<String, dynamic> _$SampleResponseToJson(SampleResponse instance) =>
    <String, dynamic>{'carType': instance.carType};
