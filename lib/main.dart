import 'package:flutter/material.dart';
import 'package:statemanagement/about.dart';
import 'package:statemanagement/home.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/store/store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Store(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routes: {
          Home.routname: (ctx) => Home(),
          AddData.routname: (ctx) => AddData()
        },
      ),
    );
  }
}
