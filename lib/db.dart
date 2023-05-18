import 'package:flutter/widgets.dart';

class PageScrollModel extends ChangeNotifier {
  num _offset = 0;

  num get offset => _offset;

  // set setoffset(offset controller) {
  //   _offset = controller;
  // }

  void changeScrollControler(num offset) {
    _offset = offset;
    notifyListeners();
  }
}
