import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container and sized box'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 150,
          width: 150,
          decoration: BoxDecoration(
          color: Colors.red,
          // borderRadius: BorderRadius.circular(90), // shape
          // shape: BoxShape.circle
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              spreadRadius: 5,
              color: Colors.yellow
            )
          ]
        ),
          child: Center(child: 
            Container(color: Colors.cyanAccent,)
            // child: Text(
            //   "Hello",
            //   style: TextStyle(fontSize: 20),
            // ),
          ),
        ),
      ),
    );
  }
}