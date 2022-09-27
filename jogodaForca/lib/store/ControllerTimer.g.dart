// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ControllerTimer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerTimer on ControllerTimerBase, Store {
  Computed<String>? _$completedTimeComputed;

  @override
  String get completedTime =>
      (_$completedTimeComputed ??= Computed<String>(() => super.completedTime,
              name: 'ControllerTimerBase.completedTime'))
          .value;

  late final _$tempoSegundoAtom =
      Atom(name: 'ControllerTimerBase.tempoSegundo', context: context);

  @override
  int get tempoSegundo {
    _$tempoSegundoAtom.reportRead();
    return super.tempoSegundo;
  }

  @override
  set tempoSegundo(int value) {
    _$tempoSegundoAtom.reportWrite(value, super.tempoSegundo, () {
      super.tempoSegundo = value;
    });
  }

  late final _$tempoMinutoAtom =
      Atom(name: 'ControllerTimerBase.tempoMinuto', context: context);

  @override
  int get tempoMinuto {
    _$tempoMinutoAtom.reportRead();
    return super.tempoMinuto;
  }

  @override
  set tempoMinuto(int value) {
    _$tempoMinutoAtom.reportWrite(value, super.tempoMinuto, () {
      super.tempoMinuto = value;
    });
  }

  late final _$ControllerTimerBaseActionController =
      ActionController(name: 'ControllerTimerBase', context: context);

  @override
  dynamic countTime() {
    final _$actionInfo = _$ControllerTimerBaseActionController.startAction(
        name: 'ControllerTimerBase.countTime');
    try {
      return super.countTime();
    } finally {
      _$ControllerTimerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tempoSegundo: ${tempoSegundo},
tempoMinuto: ${tempoMinuto},
completedTime: ${completedTime}
    ''';
  }
}
