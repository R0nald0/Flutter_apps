import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jogodaforca/view/HomePage.dart';
import 'package:jogodaforca/view/InitGame.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp
  ]);
  runApp(MaterialApp(
     home:InitGame(),
  ));
}
