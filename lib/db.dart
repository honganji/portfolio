import 'package:flutter/widgets.dart';

class PageScrollModel extends ChangeNotifier {
  num _offset = 0;

  num get offset => _offset;

  void changeScrollControler(num offset) {
    _offset = offset;
    notifyListeners();
  }
}
