import 'package:flutter/material.dart';
import 'package:valuenotifier_example/models/dragon.dart';
import 'package:valuenotifier_example/repositories/repository.dart';

class DragonStore extends ValueNotifier<DragonBaseState> {
  final UnoRepository _unoRepository;
  DragonStore(this._unoRepository) : super(DragonInitialState());

  Future<void> loadDragons() async {
    value = DragonLoadingState();
    final dragons = await _unoRepository.getDragons();

    if (dragons != null) {
      value = DragonSuccessState(dragons);
    } else {
      value = DragonErrorState();
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
