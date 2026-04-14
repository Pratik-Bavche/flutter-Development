import "package:flutter/material.dart";

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is simple Bottom Sheet",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
            showModalBottomSheet(
              backgroundColor: Theme.of(context).primaryColor,
              isDismissible: false,
              enableDrag: true,
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
              context: context, builder: (context){
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                ListTile(
                  title: Text("Orange"),
                  subtitle: Text("Krana"),
                ),
                ListTile(
                  title: Text("Apple"),
                  subtitle: Text("Pratik"),
                ),
                ListTile(
                  title: Text("Orange"),
                  subtitle: Text("Krana"),
                ),
                ListTile(
                  title: Text("Bananna"),
                  subtitle: Text("Poadan"),
                ),
                ListTile(
                  title: Text("Orange"),
                  subtitle: Text("Krana"),
                ),
              ],);
            });
          }, child: Text("Presss!")),
        ),
      ),
    );
  }
}