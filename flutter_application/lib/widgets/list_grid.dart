import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana']; // corrected spelling
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List & Grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      body: ListView.builder( // removed unnecessary Container
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(fruits[index]),
            ),
          );
        },
      ),
    );
  }
}