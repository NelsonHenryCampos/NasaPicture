import 'dart:convert';
import 'dart:io';

String nasaApiModelToJson(NasaApiModel data) => json.encode(data.toJson());

class NasaApiModel {
  DateTime date;
  String explanation;
  String hdurl;
  String mediaType;
  String serviceVersion;
  String title;
  String url;

  NasaApiModel({
    this.date,
    this.explanation,
    this.hdurl,
    this.mediaType,
    this.serviceVersion,
    this.title,
    this.url,
  });

  factory NasaApiModel.fromJson(Map<dynamic, dynamic> json) => NasaApiModel(
        date: DateTime.parse(json["date"]),
        explanation: json["explanation"],
        hdurl: json["hdurl"],
        mediaType: json["media_type"],
        serviceVersion: json["service_version"],
        title: json["title"],
        url: json["url"],
      );

  Map<dynamic, dynamic> toJson() => {
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "explanation": explanation,
        "hdurl": hdurl,
        "media_type": mediaType,
        "service_version": serviceVersion,
        "title": title,
        "url": url,
      };

  factory NasaApiModel.fromJsonString(String str) =>
      NasaApiModel.fromJson(json.decode(str));

  String toJsonString() => json.encode(toJson());

  static List<NasaApiModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map<NasaApiModel>((item) => NasaApiModel.fromJson(item))
        .toList();
  }
}
