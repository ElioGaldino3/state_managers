import 'package:mobx/mobx.dart';
import 'package:mobx_example/models/dragon.dart';
import 'package:mobx_example/repositories/repository.dart';

part 'dragon_store.g.dart';

// ignore: library_private_types_in_public_api
class DragonStore = _DragonStore with _$DragonStore;

abstract class _DragonStore with Store {
  final UnoRepository _unoRepository;
  _DragonStore(this._unoRepository);

  @observable
  bool isLoading = false;

  @observable
  bool hasError = false;

  @observable
  List<DragonModel> dragons = [];

  @action
  Future<void> loadDragons() async {
    isLoading = true;
    hasError = false;
    final dragons = await _unoRepository.getDragons();

    if (dragons != null) {
      this.dragons = dragons;
      isLoading = false;
    } else {
      hasError = true;
    }
  }
}
