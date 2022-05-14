

import 'package:flutter/material.dart';
import 'package:plantflo/model/plantListmodel.dart';
import 'package:plantflo/model/plant_service.dart';
import 'package:plantflo/services/plant_products.dart';

class PlantList extends ChangeNotifier{

  // Map<String, PlantListModel> plantproducts = {};
  List<PlantService> _plantproducts = [];

  void add(PlantService plantproduct) {
    _plantproducts.add(plantproduct);
    notifyListeners();
  }
  void remove(PlantService _plantProducts){
    _plantproducts.remove(_plantProducts);
    notifyListeners();
  }
  int get count{
    return _plantproducts.length;
  }
  List<PlantService> get plantItems{
    return _plantproducts;
  }
}