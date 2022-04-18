

import 'package:flutter/cupertino.dart';
import 'package:plantflo/services/plant_service.dart';

class PlantProducts extends ChangeNotifier{
  final  List <PlantService> plantproducts =
  [
    PlantService(
      id: 'p1',
      plantImage: 'assets/images/PPP.jpg',
      plantTitle: 'Philodendron Pink Princess',
    ),

    PlantService( id: 'p2',
      plantImage: 'assets/images/Rubber_fig.jpg',
      plantTitle: 'Rubber Fig',
    ),


    PlantService(id: 'p3',
      plantTitle: 'Rubber Fig',
      plantImage: 'assets/images/Rubber_fig.jpg',),


    PlantService( id: 'p4',
      plantImage:'assets/images/Rubber_fig.jpg',
      plantTitle:'Rubber Fig',),

    PlantService( id: 'p5',
      plantImage:'assets/images/Rubber_fig.jpg',
      plantTitle:'Rubber Fig',
    ),

    PlantService(  id: 'p6',
      plantImage: 'assets/images/Rubber_fig.jpg',
      plantTitle:'Rubber Fig',
    ),

    PlantService(  id: 'p7',
      plantImage:'assets/images/Rubber_fig.jpg',
      plantTitle: 'Rubber Fig',
    ),

    PlantService(  id: 'p8',
      plantImage: 'assets/images/Rubber_fig.jpg',
      plantTitle:'Rubber Fig',
    ),

    PlantService(  id: 'p9',
      plantImage: 'assets/images/Rubber_fig.jpg',
      plantTitle: 'Rubber Fig',
    ),

    PlantService( id: 'p10',
      plantImage: 'assets/images/Rubber_fig.jpg',
      plantTitle: 'Rubber Fig',
    ),


    PlantService(  id: 'p11',
      plantImage: 'assets/images/Rubber_fig.jpg',
      plantTitle: 'Rubber Fig',
    ),
  ];
  List<PlantService> get plantproduct {
    return [...plantproducts];
  }
}