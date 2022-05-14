

import 'package:flutter/cupertino.dart';
import 'package:plantflo/model/plantListmodel.dart';
import 'package:plantflo/model/plant_service.dart';

class PlantProducts extends ChangeNotifier{
  final  List <PlantService> plantproducts =
  [

    PlantService( id: 'p0',
      plantImage: 'assets/images/Rubber_fig.jpg',
      plantTitle: 'Rubber Fig',
    ),
    PlantService(
      id: 'p1',
      plantImage: 'assets/images/PPP.jpg',
      plantTitle: 'Philodendron Pink Princess',
    ),

    PlantService( id: 'p2',
      plantImage: 'assets/images/Chamadorea elegans.jpg',
      plantTitle: 'Palour Palm',
    ),

    PlantService(id: 'p3',
      plantTitle: 'Prayer Plant',
      plantImage: 'assets/images/maranta leuconeura.jpg',),


    PlantService( id: 'p4',
      plantImage:'assets/images/new_guinea_shield.jpg',
      plantTitle:'New Guines Shield',),

    PlantService( id: 'p5',
      plantImage:'assets/images/peace lily.jpg',
      plantTitle:'Peace Lily',
    ),

    PlantService(  id: 'p6',
      plantImage: 'assets/images/pepronia agyreia.jpg',
      plantTitle:'Watermelon Peperomia',
    ),

    PlantService(  id: 'p7',
      plantImage:'assets/images/Plante Pepromia.jpg',
      plantTitle: 'Dischidias',
    ),

    PlantService(  id: 'p8',
      plantImage: 'assets/images/snake plant.jpg',
      plantTitle:'Snake Plant',
    ),

    PlantService(  id: 'p9',
      plantImage: 'assets/images/Anthurium Pink Champion.jpg',
      plantTitle: 'Authurium Pink Champion',
    ),
    PlantService( id: 'p10',
      plantImage: 'assets/images/Dracaena.jpg',
      plantTitle: 'Drancaena',
    ),
    PlantService(  id: 'p11',
      plantImage: 'assets/images/Monstera.jpg',
      plantTitle: 'Monstera',
    ),
    PlantService(  id: 'p12',
      plantImage: 'assets/images/Philodendron.jpg',
      plantTitle: 'Philodendron',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Spiderwort.jpg',
      plantTitle: 'Spiderwort',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Swiss chesse Plant (2).jpg',
      plantTitle: 'Swiss Cheese Plant',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Rhoeo.jpg',
      plantTitle: 'Rhoeo',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Ccataus.jpg',
      plantTitle: 'Cataus',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Chinese Evergreen.jpg',
      plantTitle: 'Chinese Evergreen',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Dumb Cane.jpg',
      plantTitle: 'Dumb Cane',
    ),
    PlantService(  id: 'p13',
    plantImage: 'assets/images/Dracaena.jpg',
    plantTitle: 'Dracaena',
  ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Fire and Ice Hosta Lilly.jpg',
      plantTitle: 'Fire and Ice Hosta Lilly',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Gold Black Philodendron.jpg',
      plantTitle: 'Gold Black Philodendron',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Pin-stripe Calathea.jpg',
      plantTitle: 'Pin-stripe Calathea',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Hosta.jpg',
      plantTitle: 'Hosta',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Parasol Palm.jpg',
      plantTitle: 'Parasol Plant',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Peacock Plant.jpg',
      plantTitle: 'Peacock Plant',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Spider plant.jpg',
      plantTitle: 'Spider Plant',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Purple Shemrock.jpg',
      plantTitle: 'Purple Shemrock',
    ),
    PlantService(  id: 'p13',
      plantImage: 'assets/images/Stromanthe.jpg',
      plantTitle: 'Stromanthe',
    ),

  ];
  // // String _path = '';
  // // String get path=> _path;
  // void addPath;
  List<PlantService> get plantproduct {
    return plantproducts;
  }
  int get plantCount {
    return plantproducts.length;
  }
   notifyListeners();
}