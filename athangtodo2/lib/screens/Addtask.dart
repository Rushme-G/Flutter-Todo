import 'package:flutter/material.dart';

class Addtask extends StatefulWidget {
  const Addtask({super.key});

  @override
  State<Addtask> createState() => _AddtaskState();
}

class TaskModel {
  num id;
  String title;
  String description;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
  });
}

class _AddtaskState extends State<Addtask> {
  String title = '';
  String description = '';

  List<TaskModel> tasks = [
    TaskModel(id: 1, title: "Task 1", description: "Task 1 description"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Task'),
        ),
        body: Container(
          // color: Colors.amber,
          padding: EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height - 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // color: Colors.amber,
                child: Column(
                  children: [
                    TextField(
                      onChanged: (val) {
                        setState(() {
                          title = val;
                        });
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), label: Text('Title')),
                    ),
                    Container(
                      // color: Colors.amber,
                      margin: EdgeInsets.only(top: 8),
                      child: TextField(
                        onChanged: (val) {
                          setState(() {
                            description = val;
                          });
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Description')),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              tasks.add(TaskModel(
                                  id: tasks.length + 1,
                                  title: title,
                                  description: description));
                            });
                          },
                          child: Text('Save'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(
                  'Tasks',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Column(
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
        ));
  }
}
