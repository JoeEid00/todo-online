import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';
import 'package:todo_app/tabs/settings_tab.dart';
import 'package:todo_app/tabs/tasks_tab.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName="Home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // dh 3l4an bottomnavigtor bar bottomappbar ynfslo 3n l body
      extendBody: true,
      backgroundColor:AppColors.Secondary,
      appBar: AppBar(
        toolbarHeight: 100,
        //another way by make body and container go down to see it
        backgroundColor: AppColors.Primary,
        title: Text(
          "ToDo App",
          style: TextStyle(
          fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.bold,
        ),
        ),

      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: AppColors.Primary
          ,shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ,side: BorderSide(
        color: Colors.white,width: 2
      )),),

      //
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
          padding: EdgeInsets.zero,


        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          //howa byl5i l BottomNavigationBar 3l4an howa m5ty 3la BottomAppBar
          elevation: 0,
          //kol dh m4 leh lazma l2no asln 5tah we 5la l elevation bta3o 0
          selectedItemColor: AppColors.Primary,
          unselectedItemColor: AppColors.grey,
          showUnselectedLabels: false,

        // de lw m4 l5tha l bottomnavigtor bar hyfdl mwgod
          // type: BottomNavigationBarType.shifting,
          currentIndex: SelectedIndex,
          onTap: (value){
            SelectedIndex= value;
            // after make statfull to make dynamic screen
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home",),
            // Add more items here
            BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Search",
            ),
          ],
        ),
      ),


      body: tabs[SelectedIndex]
    );
  }

  List<Widget> tabs=[
    TasksTab(),
  SettingsTab(),
  ];
}

      //another way to make notch

//
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.white,
//         shape: const CircularNotchedRectangle(),
//         //hena how m4 est3ml asln l bottomnavigotrbar ano 3ml fo2o container we 7t gwah icon
//         child: Container(
//           height: 50.0,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children:
//  [
//               IconButton(
//
//             icon: Icon(Icons.home),
//                 onPressed: () {
//                   // Handle home button press
//                 },
//               ),
//               IconButton(
//                 icon:
//  Icon(Icons.settings),
//                 onPressed: () {
//                   // Handle settings button press
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: Container(
//         color:Colors.red,
//       )
//     );
//   }
// }









//Another way to make tall app bar for todo
// body:Column(
// childern : [
// Container (
//width :double.infinity,
//height :30,
// color:AppColors.Primary,
// ]       // ) ,