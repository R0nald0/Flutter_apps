import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogodaforca/view/HomePage.dart';

class ElevetedButtonComponent extends StatelessWidget {
  final Widget element;
  final Color corBotao ;
  void Function()? onClick;

  ElevetedButtonComponent({
    Key? key,
    this.corBotao =Colors.black26,
    required this.element,
    this.onClick
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
                backgroundColor: this.corBotao,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80))),
              onPressed: this.onClick,
              child: this.element
          ),
        );
  }
}
