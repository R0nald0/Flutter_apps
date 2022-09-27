import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jogodaforca/store/ControllerPalavra.dart';
import 'package:mobx/mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final palavraController = ControllerPalavra();
  late ReactionDisposer reactionDisposer ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    palavraController.loadWordToList();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    autorun((_) {

      palavraController.countTime();
    });
    reactionsTest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jogo da Forca"),
      ),
      body: Container(
          color: Colors.red.shade400,
          child:   Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      color: Colors.deepOrangeAccent, shape: BoxShape.rectangle),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Observer(
                                builder: (_) =>
                                    Text("Chances ${palavraController.chances}",
                                        style: TextStyle(
                                          fontSize: 24,
                                        )),
                              ),
                              Observer(
                                  builder: (_) => Text(
                                      "${palavraController.completedTime}",
                                      style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white))),
                            ]),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(child:  Image.asset("assets/images/forca.png")),
                        Expanded(child: Observer(
                          builder: (_) => Text(
                            "${palavraController.traco}",
                            style: TextStyle(fontSize: 40, letterSpacing: 13),
                          ),
                        ),)
                      ],
                    )
                ),
                SizedBox(height: 40),
                Container(
                    height: 74,
                    padding: EdgeInsets.only(
                      right: 85,
                      left: 13,
                    ),
                    child: Observer(
                      builder: (_) => TextField(
                        controller: palavraController.controllerLetra,
                        decoration: InputDecoration(
                            hintText: 'Escolha uma Letra',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 20,color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                              BorderSide(color: Colors.deepOrangeAccent),
                            ),
                            filled: true,
                            fillColor: Colors.brown.shade200,
                            focusColor: Colors.deepOrange),
                        onChanged: palavraController.setLetra,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.clip),
                      ),
                    ))
              ],
            ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:palavraController.checkLetter,
          child: Icon(
            Icons.send_sharp,
          )
      ),

    );
  }
  dialog(){
  }
  reactionsTest(){
    reactionDisposer= reaction(
            (_) =>palavraController.isTimer,
            (valor) {
          if(!valor ){
            palavraController.diminuirChances(context);
          }
        });
    reactionDisposer = reaction(
            (_) => palavraController.isWin,
            (valor) {
          if(valor){
            palavraController.checkwin(context);
            print("palavra ${palavraController.isWin}");
          }
        });
    reactionDisposer = reaction(
            (_) => palavraController.chances,
            (value) {
               if(value == 0){
                   palavraController.chechChances(context);
               }
            });
  }

  @override
  void dispose() {
    reactionDisposer();
    super.dispose();
  }
}
