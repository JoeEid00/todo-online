import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/app_colors.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {

    //area of tasks boxes
    return Container(
      height: 115,
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      decoration: BoxDecoration(
         color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),

      //task boxes
      child:   Slidable(
        startActionPane: ActionPane(motion: DrawerMotion(),
            extentRatio: 0.5,
            children: [
              SlidableAction(onPressed: (context) {


              },
                label: "Delete",
                backgroundColor: Colors.red,
                icon: Icons.delete,
                spacing: 8,
                flex: 2,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft:  Radius.circular(18),

      ),

                //to close it when swap
                // autoClose: false,
              ),

              SlidableAction(onPressed: (context) {

              },
                label: "Edit",
                backgroundColor: Colors.blue,
                icon: Icons.edit,
                spacing: 8,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 4,
                // to make the sharta ale gnb l task name
                decoration: BoxDecoration(
                  color: AppColors.Primary,
                  //3l4an ykon feha curve mn fo2
                  borderRadius: BorderRadius.circular(25)
                ),


              ),
               SizedBox(
                 width: 16,

               ),

               //design task box
               Expanded(
                 child: Column(
                   mainAxisAlignment:MainAxisAlignment.center  ,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Task title",style: TextStyle(
                      fontSize: 18,
                      color: AppColors.Primary,
                    ),),
                      Text("Task title",style: TextStyle(
                        fontSize: 14,
                        color: AppColors.grey,
                      ),),
                  ],
                           ),
               ),


              // for done button
              ElevatedButton(onPressed: (){

              }
              , child: Icon(Icons.done,color:
              Colors.white,size: 30,),

          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.Primary,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
          )
          ,)
              // another way to make this container
              // VerticalDivider(
              //   color: AppColors.Primary,
              //   thickness: 3,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
