import "package:flutter/material.dart";
import "package:flutter_application_1/widgets/SnackBar.dart";
import "package:flutter_application_1/widgets/alert.dart";
import "package:flutter_application_1/widgets/dismissible.dart";
import "package:flutter_application_1/widgets/rowcolswrap.dart";



class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  

int selectedIndex=0;

PageController pg=PageController(); 

// List<Widget> widgets=[
//   Text('Home'),
//   Text('Search'),
//   Text('Add'),
//   Text('Profile'),
// ];

  void onItemTap(int index){
  setState(() {
    selectedIndex=index;
  });
  pg.jumpToPage(index);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Bottom NAVBAR"),
      // ),
      body: PageView(
        controller: pg,
        children: [
          AlertWidget(),
          DismissibleWidget(),
          RowsCols(),
          SnackbarWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add),label:"Add"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile"),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: onItemTap,
      ),
    );
  }
}