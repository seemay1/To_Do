import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;



 ToDoTile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged, required this.deleteFunction,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0 ),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: const Color.fromARGB(255, 126, 16, 8),
              borderRadius: BorderRadius.circular(12),
            )
          ]
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
            colors: [Color.fromARGB(255, 126, 16, 8), Color.fromARGB(255, 7, 86, 151)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
             children: [
              
              Checkbox(
                value: taskCompleted, 
                onChanged: onChanged,
                activeColor: Colors.black,
                ),
        
               Text(
                taskName,
                style: TextStyle(
                  color: Colors.white,
                  decoration: taskCompleted 
                    ? TextDecoration.lineThrough 
                    : TextDecoration.none
                  ),
                ),
          ],),
        ),
      ),
    );
  }
}