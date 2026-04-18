import "package:flutter/material.dart";

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedValue = 'Orange';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown List"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              isExpanded: true, 
              value: selectedValue,
              icon: const Icon(Icons.arrow_circle_down_rounded),
              onChanged: (String? newValue) {
                setState(() {                 
                  selectedValue = newValue!;
                });
              },
              items: <String>[
                'Orange',
                'Apple',
                'Banana',
                'Mango',
                'Grapes'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value), 
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}