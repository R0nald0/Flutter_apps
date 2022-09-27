import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jogodaforca/Dao/PalavraDao.dart';
import 'package:jogodaforca/component/AlertDialogComponent.dart';
import 'package:jogodaforca/view/InitGame.dart';
import 'package:mobx/mobx.dart';
part 'ControllerPalavra.g.dart';

class ControllerPalavra = ControllerPalavraBase with _$ControllerPalavra;
     PalavraDao _palavraDao = PalavraDao();


abstract class ControllerPalavraBase with Store {
  Timer? timer;

  @observable
  bool  isTimer= true;

  @observable
  bool isWin = false;

   @observable
   String palavraName ="";

   @observable
   String tempo ="";

   @observable
   TextEditingController controllerLetra = TextEditingController();

   @observable
   String letra = '';
   @observable
   String  traco='';

   @observable
   int chances = 5;
   @observable
   int tempoSegundo =59 ;

   @observable
   int tempoMinuto =2;

   @computed
   String get completedTime=>
       "${tempoMinuto.toString().padLeft(2,'0')}:${tempoSegundo.toString().padLeft(2,'0')} " ;

   ObservableList<String> tracoList=ObservableList();

   @action
   String setLetra(letraDigitada) => letra = letraDigitada;
   alterTraceLetter(){
     traco = "";
      for(String i in tracoList){
           traco += i;
      }

  }

  @action
  loadWordToList() {
    tracoList.clear();
    palavraName= _palavraDao.chooseRandomWord();

    for(int i = 0 ; i +1 <=palavraName.length;i++){
      tracoList.add("_");
    }
    alterTraceLetter();
    print("palavra $palavraName" );
  }

   @action
   checkLetter() {
    if (controllerLetra.text.isNotEmpty) {
        if(palavraName.contains(letra)){
            checkLetterInTrace();
             if(!traco.contains("_")) isWin = true;
        }else{
          chances--;
        }

    }
    controllerLetra.text ="";
  }

   checkLetterInTrace(){

     for (int i = 0; i+1 <=palavraName.length; i++) {
       if (palavraName[i] == letra) {
         tracoList.removeAt(i);
         tracoList.insert(i, letra.toUpperCase());

         alterTraceLetter();
       }
     }

   }

   @action
   diminuirChances(context){
     if(chances !=0){
         chances--;
         tempoMinuto =2;
         tempoSegundo = 59;
         countTime();
         isTimer = true;
     }
   }

   @action
   countTime() {

     timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
       if (tempoSegundo != 0) {
         tempoSegundo--;
         if(tempoSegundo == 0 && tempoMinuto !=0){
           tempoMinuto--;
           tempoSegundo = 60;
           tempoSegundo--;

         }else if(tempoMinuto == 0 && tempoSegundo == 0){
             isTimer = false;
         }

        // print('palavra $tempoMinuto:$tempoSegundo ');
       } else {
         timer.cancel();
       }
     });
   }

   @action
   checkwin(context){
     timer?.cancel();
     print("VOCE GANHOUU");
            showDialog( context: context,
                builder:(context)=> AlertDialogComponent(
                  titulo: "Voce GANHOUU!!",
                  msg: "Descobrir Nova Palavra?",
                  onClickPositivo: () {
                    loadWordToList();
                    bonusToWin();
                    Navigator.pop(context);
                  },
                  onClickNegativo: (){
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (_)=>InitGame()), (route) => false);
                  },
                ),barrierDismissible: false
            );
            isWin = false;

   }

   bonusToWin(){
              int tempoSegundoAnterior = tempoSegundo;
               tempoSegundo += 30;
             if(tempoSegundo >= 59){
                  //REGRA DE SINAIS AUMENTANDO O VALOR SEGUNDO
               tempoSegundo =  -(tempoSegundoAnterior - 59 );
               tempoMinuto +=1;
             }
              countTime();
            }
   @action
   chechChances(context){
       timer?.cancel();

       showDialog( context: context,
           builder:(context)=> AlertDialogComponent(
             titulo: "Voce PERDEUU !!",
             msg: "Tentar novamente?",
             onClickPositivo: () {
               Navigator.pushAndRemoveUntil(context,
                   MaterialPageRoute(builder: (_)=>InitGame()), (route) => false
               );
             },
             onClickNegativo: (){
               Navigator.pushAndRemoveUntil(context,
                   MaterialPageRoute(builder: (_)=>InitGame()), (route) => false
               );
             },
           ),barrierDismissible: false
       );

   }
}


