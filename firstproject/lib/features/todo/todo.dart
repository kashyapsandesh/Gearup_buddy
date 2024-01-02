import 'package:firstproject/features/todo/addtodo.dart';
import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(todos[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              // Call a function to handle the update
                              _updateTodo(index);
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              // Call a function to handle the deletion
                              _deleteTodo(index);
                            },
                          ),
                        ],
                      ),
                    )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddTodo()));
          if (result != null) {
            // Handle the result (text) here
            setState(() {
              todos.add(result);
            });
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _deleteTodo(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Task"),
          content: Text("Are you sure you want to delete this task?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  todos.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: Text("Yes"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );
  }

  void _updateTodo(int index) async {
    String updatedText = await showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController _editTextController =
            TextEditingController(text: todos[index]);

        return AlertDialog(
          title: Text("Edit Task"),
          content: TextField(
            controller: _editTextController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(_editTextController.text);
              },
              child: Text("Update"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Cancel"),
            ),
          ],
        );
      },
    );

    if (updatedText != null && updatedText.isNotEmpty) {
      setState(() {
        todos[index] = updatedText;
      });
    }
  }
}
