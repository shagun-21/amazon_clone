import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/router.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Amazon clone',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)
        ),
        
        scaffoldBackgroundColor: GlobalVariables.backgroundColor
      ),
      onGenerateRoute: (settings)=>generateRoute(settings),
      home:  AuthScreen()
    );
  }
}
