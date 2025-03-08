import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchService extends ChangeNotifier {
  List<Map<String, dynamic>> carDataList = [];
  List<Map<String, dynamic>> filteredCarDataList = [];
  final TextEditingController textController = TextEditingController();

  SearchService() {
    loadCarData();
    textController.addListener(applyFilter);
  }

  // Load data from JSON file
  Future<void> loadCarData() async {
    final String response = await rootBundle.loadString('assets/data/car_data.json');
    final List<dynamic> data = json.decode(response);

    carDataList = List<Map<String, dynamic>>.from(data);
    applyFilter();
    notifyListeners();
  }

  // Get the keyword from the text controller
  String get keyword => textController.text.trim().toLowerCase();

  // Filter car data based on the keyword
  void applyFilter() {
    filteredCarDataList = keyword.isEmpty
        ? carDataList
        : carDataList.where((car) {
            return "${car['name']} ${car['brand']}".toLowerCase().contains(keyword);
          }).toList();
    notifyListeners();
  }

  // Clear the text and reset the filter
  void clearText() {
    textController.clear();
    applyFilter();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
