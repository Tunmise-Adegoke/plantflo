

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plantflo/screens/plant_details.dart';
import 'package:plantflo/services/plant_products.dart';
import 'package:plantflo/model/plant_service.dart';
import 'package:provider/provider.dart';

class PlantCard extends StatelessWidget {
  final PlantService plantProducts;
  final int index;
   PlantCard({Key? key,required this.plantProducts, required this.index}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // final plantId = ModalRoute.of(context)!.settings.arguments as String;
    final value = Provider.of<PlantProducts>(context, listen: false).plantproducts;
    ScreenUtil().setSp(30);
    return GestureDetector(
        onTap: () {
         Navigator.push(context,
         MaterialPageRoute(builder: (context) =>
             PlantDetails(
               index: index,
         ),
         ),);
        },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight ,
                    colors: [
                      Colors.white,
                      Colors.lightGreen
                    ]
                  ),
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
                        image: DecorationImage(
                            image: AssetImage(plantProducts.plantImage),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        child: Text(plantProducts.plantTitle,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:  TextStyle(
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.normal,
                            fontSize: 17.sp,
                          ),),
                      ),
                    ),
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
