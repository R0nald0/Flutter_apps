// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ControllerPalavra.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerPalavra on ControllerPalavraBase, Store {
  Computed<String>? _$completedTimeComputed;

  @override
  String get completedTime =>
      (_$completedTimeComputed ??= Computed<String>(() => super.completedTime,
              name: 'ControllerPalavraBase.completedTime'))
          .value;

  late final _$isTimerAtom =
      Atom(name: 'ControllerPalavraBase.isTimer', context: context);

  @override
  bool get isTimer {
    _$isTimerAtom.reportRead();
    return super.isTimer;
  }

  @override
  set isTimer(bool value) {
    _$isTimerAtom.reportWrite(value, super.isTimer, () {
      super.isTimer = value;
    });
  }

  late final _$isWinAtom =
      Atom(name: 'ControllerPalavraBase.isWin', context: context);

  @override
  bool get isWin {
    _$isWinAtom.reportRead();
    return super.isWin;
  }

  @override
  set isWin(bool value) {
    _$isWinAtom.reportWrite(value, super.isWin, () {
      super.isWin = value;
    });
  }

  late final _$palavraNameAtom =
      Atom(name: 'ControllerPalavraBase.palavraName', context: context);

  @override
  String get palavraName {
    _$palavraNameAtom.reportRead();
    return super.palavraName;
  }

  @override
  set palavraName(String value) {
    _$palavraNameAtom.reportWrite(value, super.palavraName, () {
      super.palavraName = value;
    });
  }

  late final _$tempoAtom =
      Atom(name: 'ControllerPalavraBase.tempo', context: context);

  @override
  String get tempo {
    _$tempoAtom.reportRead();
    return super.tempo;
  }

  @override
  set tempo(String value) {
    _$tempoAtom.reportWrite(value, super.tempo, () {
      super.tempo = value;
    });
  }

  late final _$controllerLetraAtom =
      Atom(name: 'ControllerPalavraBase.controllerLetra', context: context);

  @override
  TextEditingController get controllerLetra {
    _$controllerLetraAtom.reportRead();
    return super.controllerLetra;
  }

  @override
  set controllerLetra(TextEditingController value) {
    _$controllerLetraAtom.reportWrite(value, super.controllerLetra, () {
      super.controllerLetra = value;
    });
  }

  late final _$letraAtom =
      Atom(name: 'ControllerPalavraBase.letra', context: context);

  @override
  String get letra {
    _$letraAtom.reportRead();
    return super.letra;
  }

  @override
  set letra(String value) {
    _$letraAtom.reportWrite(value, super.letra, () {
      super.letra = value;
    });
  }

  late final _$tracoAtom =
      Atom(name: 'ControllerPalavraBase.traco', context: context);

  @override
  String get traco {
    _$tracoAtom.reportRead();
    return super.traco;
  }

  @override
  set traco(String value) {
    _$tracoAtom.reportWrite(value, super.traco, () {
      super.traco = value;
    });
  }

  late final _$chancesAtom =
      Atom(name: 'ControllerPalavraBase.chances', context: context);

  @override
  int get chances {
    _$chancesAtom.reportRead();
    return super.chances;
  }

  @override
  set chances(int value) {
    _$chancesAtom.reportWrite(value, super.chances, () {
      super.chances = value;
    });
  }

  late final _$tempoSegundoAtom =
      Atom(name: 'ControllerPalavraBase.tempoSegundo', context: context);

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
      Atom(name: 'ControllerPalavraBase.tempoMinuto', context: context);

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

  late final _$ControllerPalavraBaseActionController =
      ActionController(name: 'ControllerPalavraBase', context: context);

  @override
  String setLetra(dynamic letraDigitada) {
    final _$actionInfo = _$ControllerPalavraBaseActionController.startAction(
        name: 'ControllerPalavraBase.setLetra');
    try {
      return super.setLetra(letraDigitada);
    } finally {
      _$ControllerPalavraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic loadWordToList() {
    final _$actionInfo = _$ControllerPalavraBaseActionController.startAction(
        name: 'ControllerPalavraBase.loadWordToList');
    try {
      return super.loadWordToList();
    } finally {
      _$ControllerPalavraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic checkLetter() {
    final _$actionInfo = _$ControllerPalavraBaseActionController.startAction(
        name: 'ControllerPalavraBase.checkLetter');
    try {
      return super.checkLetter();
    } finally {
      _$ControllerPalavraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic diminuirChances(dynamic context) {
    final _$actionInfo = _$ControllerPalavraBaseActionController.startAction(
        name: 'ControllerPalavraBase.diminuirChances');
    try {
      return super.diminuirChances(context);
    } finally {
      _$ControllerPalavraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic countTime() {
    final _$actionInfo = _$ControllerPalavraBaseActionController.startAction(
        name: 'ControllerPalavraBase.countTime');
    try {
      return super.countTime();
    } finally {
      _$ControllerPalavraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic checkwin(dynamic context) {
    final _$actionInfo = _$ControllerPalavraBaseActionController.startAction(
        name: 'ControllerPalavraBase.checkwin');
    try {
      return super.checkwin(context);
    } finally {
      _$ControllerPalavraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic chechChances(dynamic context) {
    final _$actionInfo = _$ControllerPalavraBaseActionController.startAction(
        name: 'ControllerPalavraBase.chechChances');
    try {
      return super.chechChances(context);
    } finally {
      _$ControllerPalavraBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isTimer: ${isTimer},
isWin: ${isWin},
palavraName: ${palavraName},
tempo: ${tempo},
controllerLetra: ${controllerLetra},
letra: ${letra},
traco: ${traco},
chances: ${chances},
tempoSegundo: ${tempoSegundo},
tempoMinuto: ${tempoMinuto},
completedTime: ${completedTime}
    ''';
  }
}
