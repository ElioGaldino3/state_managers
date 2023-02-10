// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dragon_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DragonStore on _DragonStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_DragonStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$hasErrorAtom =
      Atom(name: '_DragonStore.hasError', context: context);

  @override
  bool get hasError {
    _$hasErrorAtom.reportRead();
    return super.hasError;
  }

  @override
  set hasError(bool value) {
    _$hasErrorAtom.reportWrite(value, super.hasError, () {
      super.hasError = value;
    });
  }

  late final _$dragonsAtom =
      Atom(name: '_DragonStore.dragons', context: context);

  @override
  List<DragonModel> get dragons {
    _$dragonsAtom.reportRead();
    return super.dragons;
  }

  @override
  set dragons(List<DragonModel> value) {
    _$dragonsAtom.reportWrite(value, super.dragons, () {
      super.dragons = value;
    });
  }

  late final _$loadDragonsAsyncAction =
      AsyncAction('_DragonStore.loadDragons', context: context);

  @override
  Future<void> loadDragons() {
    return _$loadDragonsAsyncAction.run(() => super.loadDragons());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
hasError: ${hasError},
dragons: ${dragons}
    ''';
  }
}
