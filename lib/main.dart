import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:call_me_maybe/src/app.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:call_me_maybe/export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp
  ]);

  runApp(MyApp());
}
