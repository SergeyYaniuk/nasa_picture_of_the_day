// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_apod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteApod _$RemoteApodFromJson(Map<String, dynamic> json) => RemoteApod(
      date: json['date'] as String,
      explanation: json['explanation'] as String,
      hdurl: json['hdurl'] as String,
      mediaType: json['media_type'] as String,
      serviceVersion: json['service_version'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$RemoteApodToJson(RemoteApod instance) =>
    <String, dynamic>{
      'date': instance.date,
      'explanation': instance.explanation,
      'hdurl': instance.hdurl,
      'media_type': instance.mediaType,
      'service_version': instance.serviceVersion,
      'title': instance.title,
      'url': instance.url,
    };
