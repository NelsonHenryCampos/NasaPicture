import 'package:challenge/app/modules/details/details_controller.dart';
import 'package:challenge/app/modules/details/details_page.dart';
import 'package:challenge/app/modules/home/home_controller.dart';
import 'package:challenge/app/modules/home/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:challenge/app/modules/home/home_page.dart';

import '../../app_module.dart';

//locuragem
class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeRepository(Dio(), AppModule.to.get())),
        Bind((i) => HomeController(i.get())),
        Bind((i) => DetailsController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router(
          '/details/:img/:date/:title/:ex',
          child: (_, args) => DetailsPage(
            img: args.params['img'],
            date: args.params['date'],
            title: args.params['title'],
            explanation: args.params['ex'],
          ),
          transition: TransitionType.fadeIn,
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
