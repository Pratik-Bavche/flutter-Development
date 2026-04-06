import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Container_Sized.dart';

void main(){
  runApp(MyApp());
}

//Types of widgets
//Stateless - not changable
//StateFull - changable

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    // return Text("Pratik Bavche",textDirection:TextDirection.ltr);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,primaryColor: Colors.deepPurple),
        home: Container_Sized(),
    );
  }
} 