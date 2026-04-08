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
      body: Container(
      //   child: ListView.builder( // removed unnecessary Container
      //     itemCount: fruits.length,
      //     itemBuilder: (context, index) {
      //       return Card(
      //         child: ListTile(
      //           leading: Icon(Icons.person_2_rounded),
      //           title: Text(fruits[index]),
      //         ),
      //       );
      //     },
      //   ),


      child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 15,mainAxisSpacing: 15,childAspectRatio: 2/3),
      children: [
        Card(child: Center(child: Text("Pratik")),),
        Card(child: Center(child: Text("Pratik")),),
        Card(child: Center(child: Text("Pratik")),),
        Card(child: Center(child: Text("Pratik")),),
        Card(child: Center(child: Text("Pratik")),)
      ],
      ),
      ),
    );
  }
}