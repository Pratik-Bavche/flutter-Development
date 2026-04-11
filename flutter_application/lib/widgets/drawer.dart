import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(child: Container(
                
                color: Colors.red,
                // padding: EdgeInsets.all(30),
              )),
              ListTile(leading: Icon(Icons.folder),
              title: Text("MyFiles"),
              ),
              ListTile(leading: Icon(Icons.group),
              title: Text("Shared with me"),
              ),
              ListTile(leading: Icon(Icons.delete),
              title: Text("Trash"),
              ),
              ListTile(leading: Icon(Icons.star),
              title: Text("Starred"),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("This is the DRAWER!"),
      ),
      body: Container(child: Center(child: Text("Hello!"),),),
    );
  }
}