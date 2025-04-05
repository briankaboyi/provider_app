import 'package:flutter/widgets.dart';

class CounterProvider extends ChangeNotifier {
  int numValue;

  CounterProvider({
    this.numValue = 0,
  });

  void increment(){
    numValue ++;
    notifyListeners();
  }
  void decrement(){
    numValue --;
    notifyListeners();
  }
  void reset(){
    numValue=0;
    notifyListeners();
  }
}
