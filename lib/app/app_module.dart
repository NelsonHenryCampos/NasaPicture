import 'dart:io';

import 'package:challenge/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:challenge/app/app_widget.dart';
import 'package:challenge/app/modules/home/home_module.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppModule extends MainModule {
  final SharedPreferences sharedPreferences;
  AppModule(this.sharedPreferences);

  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => sharedPreferences),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
