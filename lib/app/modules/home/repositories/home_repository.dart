import 'dart:convert';
import 'dart:io';
import 'package:challenge/app/shared/models/nasa_api_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeRepository extends Disposable {
  final Dio client;
  final SharedPreferences sharedPreferences;
  HomeRepository(
    this.client,
    this.sharedPreferences,
  );
  String apiKey = 'Fty80HkuF2LSDWPVutz34KJ4MXh9JWWKo8degZO4';

  Future<List<NasaApiModel>> fetchPost() async {
    try {
      final response = await client.get(
          'https://api.nasa.gov/planetary/apod?api_key=$apiKey&count=10');

      var value = NasaApiModel.fromJsonList(response.data);

      sharedPreferences.setStringList("HomeRepository-fetchPost",
          value.map((item) => item.toJsonString()).toList());

      return value;
    } catch (e) {
      var value = sharedPreferences.getStringList("HomeRepository-fetchPost");
      return value.map((item) => NasaApiModel.fromJsonString(item)).toList();
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}

