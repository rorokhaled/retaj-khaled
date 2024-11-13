import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:retaj/providirr/providir_login.dart';
import 'package:retaj/providirr/providir_pro.dart';
import 'package:retaj/providirr/providir_sigin.dart';
import 'package:retaj/screens/carpro.dart';
import 'package:retaj/screens/homesecerns.dart';
import 'package:retaj/screens/siginup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (BuildContext context) =>providrsiginup(),),
        ChangeNotifierProvider(create: (BuildContext context) =>providlogin(),),
        ChangeNotifierProvider(create: (BuildContext context) =>providirprodcout(),)
      ],
      child: MaterialApp(
        home: sigin(),

      ),
    );
  }
}
