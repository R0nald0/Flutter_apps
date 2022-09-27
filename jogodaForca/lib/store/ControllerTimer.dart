import 'dart:async';

import 'package:jogodaforca/store/ControllerPalavra.dart';
import 'package:mobx/mobx.dart';

part 'ControllerTimer.g.dart';

class ControllerTimer = ControllerTimerBase with _$ControllerTimer;

abstract class ControllerTimerBase with Store {

  @observable
  int tempoSegundo =59 ;

  @observable
  int tempoMinuto =2;

  @computed
  String get completedTime=>
      "${tempoMinuto.toString().padLeft(2,'0')}:${tempoSegundo.toString().padLeft(2,'0')} " ;


  get tempoSeg => tempoSegundo;

  @action
  countTime() {
    Timer timer;
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (tempoSegundo != 0) {
        tempoSegundo--;
        if(tempoSegundo == 0 && tempoMinuto !=0){
          tempoMinuto--;
          tempoSegundo = 60;
          tempoSegundo--;
        }

       // print('palavra $tempoMinuto:$tempoSegundo');
      } else {
        timer.cancel();
      }
    });
  }



}