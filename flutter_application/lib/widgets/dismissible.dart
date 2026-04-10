import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Grapes', 'Banana']; // fixed ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is dismissible"),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];

          return Dismissible(
            key: Key(fruit),

            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(fruit),
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(fruit),
                    backgroundColor: Colors.green,
                  ),
                );
              }
            },

            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.green),

            child: Card(
              child: ListTile(
                title: Text(fruit),
              ),
            ),
          );
        },
      ),
    );
  }
}