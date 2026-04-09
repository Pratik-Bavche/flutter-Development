import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is the SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              // shape: RoundedRectangleBorder(
                // borderRadius: BorderRadiusGeometry.all(30)
              // ),
              behavior: SnackBarBehavior.floating,
              duration: Duration(milliseconds: 3000),
              padding: EdgeInsets.all(30),
              backgroundColor: Colors.red,
              content: const Text('SnackBar working!!'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text("Show Snackbar"),
        ),
      ),
    );
  }
}