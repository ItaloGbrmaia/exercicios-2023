// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeController, Store {
  late final _$eventsAtom =
      Atom(name: '_HomeController.events', context: context);

  @override
  ObservableList<EventData> get events {
    _$eventsAtom.reportRead();
    return super.events;
  }

  @override
  set events(ObservableList<EventData> value) {
    _$eventsAtom.reportWrite(value, super.events, () {
      super.events = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_HomeController.isLoading', context: context);

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

  late final _$loadDataAsyncAction =
      AsyncAction('_HomeController.loadData', context: context);

  @override
  Future<void> loadData() {
    return _$loadDataAsyncAction.run(() => super.loadData());
  }

  @override
  String toString() {
    return '''
events: ${events},
isLoading: ${isLoading}
    ''';
  }
}
