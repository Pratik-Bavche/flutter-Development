import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is about buttons"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // ✅ Text Button
            TextButton(
              style: ButtonStyle(
                elevation: WidgetStateProperty.all(10),
                padding: WidgetStateProperty.all(
                  const EdgeInsets.all(15),
                ),
                backgroundColor: WidgetStateProperty.all(Colors.white),

       
                overlayColor: WidgetStateProperty.all(
                  Colors.black.withOpacity(0.1),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Press me!",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),

            const SizedBox(height: 20),

            // ✅ Elevated Button (Better Styling)
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.all(15),
                  ),
                  backgroundColor: WidgetStateProperty.all(Colors.white),
              
                  overlayColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.pressed)) {
                      return Colors.red.withOpacity(0.2);
                    }
                    return null;
                  }),
                ),
                onPressed: () {
                  print("Hello");
                },
                child: const Text(
                  "This is new button",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 228, 48, 48),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}