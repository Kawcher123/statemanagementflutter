import 'package:flutter/widgets.dart';

class Store with ChangeNotifier {
  List<String> _datas = [
    "data 1",
    "data 2",
    "data 3",
    "data 4",
    "data 5",
    "data 6",
  ];

  List<String> get data {
    return [..._datas];
  }

  void addData(String data) {
    _datas.insert(0, data);
    notifyListeners();
  }
}
