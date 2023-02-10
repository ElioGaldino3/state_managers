import 'package:bloc/bloc.dart';
import 'package:bloc_example/models/dragon.dart';
import 'package:bloc_example/repositories/repository.dart';

abstract class DragonEvent {}

class LoadDragons implements DragonEvent {}

class DragonBloc extends Bloc<DragonEvent, List<DragonModel>?> {
  final UnoRepository _repository;

  DragonBloc(this._repository) : super(null) {
    on<LoadDragons>(_loadDragons);
  }

  void _loadDragons(event, Emitter<List<DragonModel>?> emit) async {
    await _repository.getDragons().then((value) {
      if (value != null) {
        emit(value);
      }
    });
  }
}
