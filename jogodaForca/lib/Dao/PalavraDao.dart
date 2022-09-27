import 'dart:math';

import 'package:jogodaforca/model/palavra.dart';

class PalavraDao {

    Palavra palavra = Palavra();

    List<String> palavraList = ["Nomade","Rude","Anseio"];

    String buscarPalavra(int id){
            if(id != null){
                String palavraEscolhida = palavraList[id];
                 return palavraEscolhida;
            }
       return "palavra n existe";
    }

    List<String> listarPalavra(){
         List<String> palavras =[''];
        for(String item in palavraList){
              palavras.add(item);
        }
        return palavras;
    }



   String chooseRandomWord(){
        int numeroAleatorio = Random().nextInt(palavraList.length);
          String palavraAleatoria= palavraList[numeroAleatorio];
        return palavraAleatoria.toLowerCase();
    }

}