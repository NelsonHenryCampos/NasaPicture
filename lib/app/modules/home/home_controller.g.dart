// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$nasaListAtom = Atom(name: '_HomeBase.nasaList');

  @override
  List<NasaApiModel> get nasaList {
    _$nasaListAtom.context.enforceReadPolicy(_$nasaListAtom);
    _$nasaListAtom.reportObserved();
    return super.nasaList;
  }

  @override
  set nasaList(List<NasaApiModel> value) {
    _$nasaListAtom.context.conditionallyRunInAction(() {
      super.nasaList = value;
      _$nasaListAtom.reportChanged();
    }, _$nasaListAtom, name: '${_$nasaListAtom.name}_set');
  }
}
