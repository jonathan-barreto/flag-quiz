import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz/models/country_model.dart';

class CountryController extends ChangeNotifier {
  CountryModel? countryQuiz; // serialize?
  List<String>? countries;
  CountryData? countryData;
  bool isLoading = true;
  bool newScreen = false;

  Future<void> getApi() async {
    isLoading = true;
    var url = Uri.parse('http://192.168.0.106/api/');
    final response = await http.get(url);
    var json = jsonDecode(response.body);
    countryQuiz = CountryModel.fromJson(json);
    countries = countryQuiz!.countriesRandom;
    countryData = countryQuiz?.countryData;
    isLoading = false;
    notifyListeners();
  }

  List<bool> results = [];
  List<bool> trueResults = [];

  void clear() {
    results.clear();
    trueResults.clear();
  }

  Future<void> addResults(String countryName, String countrySort) async {
    if (results.length != 5) {
      if (countryName == countrySort) {
        results.add(true);
        trueResults.add(true);
      } else {
        results.add(false);
      }
    }

    if (results.length == 5) {
      newScreen = true;
      notifyListeners();
    }

    await getApi();
  }
}
