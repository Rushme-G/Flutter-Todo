import 'package:athangtodo2/screens/Addtask.dart';
import 'package:flutter/material.dart';

// Stateful widgets can rerender the screen when the data is reloaded
class HomeTask extends StatefulWidget {
  @override
  State<HomeTask> createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {
  String title = "Hello";

  num count = 1;

  @override
  Widget build(BuildContext context) {
    List<TaskModel> tasks = [
      TaskModel(id: 1, title: 'Task 1', description: 'Description of Task 1'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(top: 16),
              child: Text(
                'Tasks',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                // we render the tasks here
                children: tasks.map((el) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 12, top: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                el.title,
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(el.description),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            // Icon button is used to have a button with only icon and no texts
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.edit)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete)),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Addtask()));
          // Navigator.of(context).popAndPushNamed('/HomeTask');
        },
        //====start: text displayed in the floating button====
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text(
        //       title,
        //       style: TextStyle(fontSize: 32),
        //     ),
        //   ),
        // );
        //====end: text displayed in the floating button====

        backgroundColor: Colors.red,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
