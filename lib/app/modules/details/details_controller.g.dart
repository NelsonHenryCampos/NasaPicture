// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsController on _DetailsBase, Store {
  final _$valueAtom = Atom(name: '_DetailsBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_DetailsBaseActionController = ActionController(name: '_DetailsBase');

  @override
  void increment() {
    final _$actionInfo = _$_DetailsBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_DetailsBaseActionController.endAction(_$actionInfo);
    }
  }
}
