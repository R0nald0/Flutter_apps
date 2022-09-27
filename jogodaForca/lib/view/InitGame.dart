import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogodaforca/component/ElevetedButtonComponent.dart';
import 'package:jogodaforca/view/HomePage.dart';

class InitGame extends StatelessWidget {
  const InitGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Container(
          color: Colors.red.shade200,
          child: LayoutBuilder(builder: (BuildContext , BoxConstraints ) {
               return Container(
                 child: Column( mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(padding: EdgeInsets.symmetric(vertical: 30),
                       child:  Image.asset("assets/images/forca.png",height: 200),
                     ),
                     Center(
                       child: ElevetedButtonComponent(
                          corBotao: Colors.redAccent,
                         element: Text("Iniciar",style:TextStyle(fontSize: 35),),
                         onClick: (){
                           Navigator.pushAndRemoveUntil(context,
                               MaterialPageRoute(builder: (_)=>HomePage()), (route) => false);
                         },
                       ),
                     ),
                   ],
                 )
               );
          },

          )
       ),
    );
  }
}
