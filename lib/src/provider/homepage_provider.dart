
import 'package:flutter/material.dart';

class HomePageNotifier extends ChangeNotifier {
	HomePageNotifier({this.currentPage = 0});
  int currentPage = 0;

  void updateCurrentPage(int value) {
	currentPage = value;
	notifyListeners();
  }
}
