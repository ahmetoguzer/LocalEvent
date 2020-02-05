import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddEventContentForm extends StatefulWidget {
  @override
  AddEventContent createState() => AddEventContent();
}

class AddEventContent extends State<AddEventContentForm> {

  final mTitle = TextEditingController();
  final mDesciription = TextEditingController();
  final mLocation= TextEditingController();
  final mDuration = TextEditingController();
  final mCategory = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    mTitle.dispose();
    mDesciription.dispose();
    mLocation.dispose();
    mDuration.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Event Detail'),
      ),

      body:   Padding(

        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
          SizedBox(
              child: TextField(
              controller: mTitle,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  ),
                  labelText: 'Title'
              )

          ))
           ,
            TextField(
                controller: mDesciription,
                decoration: InputDecoration(
                    labelText: 'Description',
                ),
            ),
            TextField(
                controller: mLocation,
                decoration: InputDecoration(
                    labelText: 'Location'
                )
            ),
            TextField(
                controller: mDuration,
                decoration: InputDecoration(
                    labelText: 'Duration'
                )
            ),
            TextField(
                controller: mCategory,
                decoration: InputDecoration(
                    labelText: 'Category'
                )
            )

          ],
        )

      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(mTitle.text+mDesciription.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.add),
      ),
    );
  }
}