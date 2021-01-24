import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/about.dart';
import 'package:statemanagement/store/store.dart';

class Home extends StatefulWidget {
  static const routname = "/";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final getdata = Provider.of<Store>(context).data;
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddData.routname);
              },
            )
          ],
        ),
        body: ListView.builder(
          itemCount: getdata.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(getdata[index]),
            );
          },
        ));
  }
}
