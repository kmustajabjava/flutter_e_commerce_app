import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_e_commerce_app/my_app.dart';

void main() async {
  // Ensure that the Flutter binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // // Restrict the app to portrait mode
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);

  runApp(const MyApp());
}
