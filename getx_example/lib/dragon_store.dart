import 'package:get/get.dart';

import 'models/dragon.dart';
import 'repositories/repository.dart';

class DragonStore {
  final UnoRepository _unoRepository;
  DragonStore(this._unoRepository);

  final isLoading = false.obs;

  final hasError = false.obs;

  final dragons = <DragonModel>[].obs;

  Future<void> loadDragons() async {
    isLoading.value = true;
    hasError.value = false;
    final dragons = await _unoRepository.getDragons();

    if (dragons != null) {
      this.dragons.value = dragons;
      isLoading.value = false;
    } else {
      hasError.value = true;
    }
  }
}