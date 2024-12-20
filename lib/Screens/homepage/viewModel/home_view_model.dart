import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier{

  List categories = ['RIDES' , 'STORIES', 'MARKET', 'GARAGE'];
  int selectedIndex = 0;
  final List<String> cities = ['Mumbai', 'Delhi', 'Bangalore', 'Chennai'];
  final List<String> bikeBrands = ['Honda', 'Yamaha', 'Kawasaki', 'Suzuki'];
  final List<String> sortByOptions = ['Price', 'Date', 'Popularity'];
    String? selectedCity;
  String? selectedBikeBrand;
  String? selectedSortBy;

  selectCategory(int i) async {
     selectedIndex = i;
     notifyListeners();
  }

}