import 'package:amazon_clone/constants/global_variable.dart';
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
        colorScheme: ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)
        ),
        
        scaffoldBackgroundColor: GlobalVariables.backgroundColor
      ),
      home:  Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Center(child: Text("Hello.")),
        ), body: Column(
          children: [
            const Center(child: Text('Flutter Demo Home Page')),
            ElevatedButton(onPressed: (){}, child: Text("Click me"))
          ],
        ),),
    );
  }
}
