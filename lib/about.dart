import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/home.dart';
import 'package:statemanagement/store/store.dart';

class AddData extends StatefulWidget {
  static const routname = "/about";
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  final _textcontroller = TextEditingController();

  void _addData() {
    if (_textcontroller.text.length <= 0) {
      return;
    }
    Provider.of<Store>(context, listen: false).addData(_textcontroller.text);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: _textcontroller,
            decoration: InputDecoration(hintText: "Enter a data"),
          ),
          RaisedButton(
            onPressed: () {
              _addData();
            },
            child: Text("Submit"),
          )
        ],
      )),
    );
  }
}
