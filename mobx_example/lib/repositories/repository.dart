import 'package:mobx_example/models/dragon.dart';
import 'package:uno/uno.dart';

class UnoRepository {
  final Uno _uno;
  UnoRepository(this._uno);

  Future<List<DragonModel>?> getDragons() async {
    try {
      final response = await _uno.get('/dragon');

      return response.data.map<DragonModel>((map) => DragonModel.fromMap(map)).toList();
    } catch (e) {
      return null;
    }
  }
}
