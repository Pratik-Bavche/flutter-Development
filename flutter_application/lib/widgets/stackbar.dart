import "package:flutter/material.dart";

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackBar"),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(child: 
          Stack(children: [
            Positioned(
              left: 40,
              bottom: 20,
              right: 50,
              child: Container(
                height: 400,
                width: 400,
                color: Colors.yellow,
              ),
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            )
          ],)
        ),
      ),
    );
  }
}