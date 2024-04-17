import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_apod.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RemoteApod {
  final String date;
  final String explanation;
  final String hdurl;
  final String mediaType;
  final String serviceVersion;
  final String title;
  final String url;

  RemoteApod(
      {required this.date,
      required this.explanation,
      required this.hdurl,
      required this.mediaType,
      required this.serviceVersion,
      required this.title,
      required this.url});

  factory RemoteApod.fromJson(Map<String, dynamic> json) =>
      _$RemoteApodFromJson(json);
}
