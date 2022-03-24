import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos_flutter/screens/basic_design.dart';
import 'package:disenos_flutter/screens/home_screen.dart';
import 'package:disenos_flutter/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Cambiar el color de la barra de estado con copywith es color tuyo
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        // se usa _ cuando no se usa el context
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_screen': (_) => const ScrollScreen(),
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
