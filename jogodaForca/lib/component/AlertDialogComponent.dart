import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogComponent extends StatelessWidget {
  final titulo;
  final msg;
  void Function()? onClickPositivo;
  void Function()? onClickNegativo;

   AlertDialogComponent({Key? key ,required this.titulo,this.msg,this.onClickPositivo,this.onClickNegativo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
         title: Text(this.titulo),
         content: Column(  mainAxisSize: MainAxisSize.min,
            children: [
               Center(child: Text(this.msg),)
            ],
         ),
        actions: [
            TextButton(onPressed:this.onClickNegativo, child:Text("Não")),
            TextButton(onPressed:this.onClickPositivo,child:Text("Sim")),
        ],
       elevation: 25,

    );
  }
}
