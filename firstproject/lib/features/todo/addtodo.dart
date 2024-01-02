import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  AddTodo({super.key});
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add Todo")),
        body: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_textController.text != "") {
                    Navigator.pop(context, _textController.text);
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Error!"),
                          content: Text("Please enter a task."),
                          actions: [
                            ElevatedButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text("Okay"),
                            )
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text("Submit Task"))
          ],
        )));
  }
}
