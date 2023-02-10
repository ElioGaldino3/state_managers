import 'package:changenotifier_example/models/dragon.dart';
import 'package:changenotifier_example/repositories/repository.dart';
import 'package:flutter/material.dart';

class DragonStore with ChangeNotifier {
  final UnoRepository _unoRepository;
  DragonBaseState _value = DragonInitialState();
  DragonStore(this._unoRepository) : super();

  DragonBaseState get state => _value;

  Future<void> loadDragons() async {
    _value = DragonLoadingState();
    notifyListeners();
    final dragons = await _unoRepository.getDragons();

    if (dragons != null) {
      _value = DragonSuccessState(dragons);
      notifyListeners();
    } else {
      _value = DragonErrorState();
      notifyListeners();
    }
  }
}

abstract class DragonBaseState {}

class DragonInitialState implements DragonBaseState {}

class DragonLoadingState implements DragonBaseState {}

class DragonSuccessState implements DragonBaseState {
  final List<DragonModel> dragons;

  DragonSuccessState(this.dragons);
}

class DragonErrorState implements DragonBaseState {}
