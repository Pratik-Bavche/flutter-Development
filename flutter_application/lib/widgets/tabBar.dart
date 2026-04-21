import "package:flutter/material.dart";

class tabBarWidget extends StatelessWidget {
  const tabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("TabBAR"),
        bottom: TabBar(
          indicatorWeight: 10,
          indicatorColor: Colors.red,
          tabs: [
          Tab(icon: Icon(Icons.camera,),text: "CAMERA",),
          Tab(icon: Icon(Icons.chat,),text: "CHATS",),
          Tab(icon: Icon(Icons.alarm,),text: "ALARM",),
          Tab(icon: Icon(Icons.file_copy_sharp,),text: "FILE",)
        ]),
      ),
      body: TabBarView(children: [
        Container(child: Center(child: Text("CAMERA",style: TextStyle(fontSize: 30),),),),
        Container(child: Center(child: Text("CHATS",style: TextStyle(fontSize: 30),),),),
        Container(child: Center(child: Text("ALARM",style: TextStyle(fontSize: 30),),),),
        Container(child: Center(child: Text("FILE",style: TextStyle(fontSize: 30),),),)
      ]),
    ));
  }
}