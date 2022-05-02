

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantflo/screens/plant_details.dart';
import 'package:plantflo/services/plant_products.dart';
import 'package:plantflo/services/plant_service.dart';
import 'package:provider/provider.dart';

class PlantCard extends StatelessWidget {
   PlantCard({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final value = Provider.of<PlantProducts>(context, listen: false).plantproducts;
    return GestureDetector(
        onTap: () {
         Navigator.push(context,
         MaterialPageRoute(builder: (context) => PlantDetails(),
         ),);
        },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 0,
            child: Hero(
              tag: Text(value.first.plantTitle),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  height: 40,
                  child: ListTile(
                    leading: Text(value.first.plantTitle)),
                ),
                child: Image.asset(value.first.plantImage,
                  fit: BoxFit.cover,),
              ),
                ),
            ),
    );
  }
}
