import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function (bool?)? onChanged;
  Function (BuildContext)? deleteFunction;
  TodoTile({super.key, required this.taskName,required this.taskCompleted,required this.onChanged, required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25.0, right: 25.0, top:25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.circular(13),)
            ],
        ),
          child:Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
            children:[
              Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: Colors.black,
              ),
              Text(taskName,
                style: TextStyle(decoration:taskCompleted
                    ?TextDecoration.lineThrough
                    :TextDecoration.none),
              ),
            ],
        ),
      ),
)
    );
  }
}
