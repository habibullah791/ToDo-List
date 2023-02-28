import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/tasks_list.dart';
import './add_task_screen.dart';
import '../models/task_data.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF152A38),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF152A38),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => AddTask(),
            );
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              top: 70.0,
              left: 30.0,
              right: 30.0,
              bottom: 60.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40.0,
                  child: Icon(
                    Icons.list,
                    size: 45.0,
                    color: Color(0xFF152A38),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  'Task Keeper',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
