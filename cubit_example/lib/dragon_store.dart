import 'package:bloc/bloc.dart';
import 'package:cubit_example/models/dragon.dart';
import 'package:cubit_example/repositories/repository.dart';

class DragonStore extends Cubit<DragonBaseState> {
  final UnoRepository _unoRepository;
  DragonStore(this._unoRepository) : super(DragonInitialState());

  Future<void> loadDragons() async {
    emit(DragonLoadingState());
    final dragons = await _unoRepository.getDragons();

    if (dragons != null) {
      emit(DragonSuccessState(dragons));
    } else {
      emit(DragonErrorState());
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
