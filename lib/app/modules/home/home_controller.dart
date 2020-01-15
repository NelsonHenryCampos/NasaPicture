import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:challenge/app/modules/home/home_module.dart';
import 'package:challenge/app/modules/home/repositories/home_repository.dart';
import 'package:challenge/app/shared/models/nasa_api_model.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  var dio = Dio();
  final HomeRepository repository;

  @action
  void imageVerify(int index) {
    if (nasaList[index].hdurl == null) {
      hasImage = false;
    } else {
      hasImage = true;
    }
  }

  @observable
  bool hasImage = false;

  @observable
  List<NasaApiModel> nasaList;

  @action
  getData() {
    repository.fetchPost().then((data) {
      nasaList = data;
    });
  }

  @action
  Future<Null> refresh() async {
    await getData();
    return null;
  }

  _HomeBase(this.repository) {
    getData();
  }
}
