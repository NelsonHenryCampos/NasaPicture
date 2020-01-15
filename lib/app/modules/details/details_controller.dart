import 'package:mobx/mobx.dart';

part 'details_controller.g.dart';

class DetailsController = _DetailsBase with _$DetailsController;

abstract class _DetailsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
