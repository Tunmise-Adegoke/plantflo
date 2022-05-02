

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                        image: DecorationImage(image: AssetImage(value.first.plantImage),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(value.first.plantTitle,
                      style:  TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),),
                  ],
                ),
              ),
            ),
            ),
          );

              // child: Hero(
              //   tag: Text(value.first.plantTitle),
                // child: GridTile(
                //   footer: Container(
                //     color: Colors.white70,
                //     height: 40,
                //     child: ListTile(
                //       leading: Text(value.first.plantTitle)),
                //   ),

  }
}
