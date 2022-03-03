import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantflo/model/plant_item.dart';
import 'package:plantflo/plant_details.dart';

class PlantCard extends StatelessWidget {
  final Item item;
   PlantCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       Navigator.push(context, 
       MaterialPageRoute(builder: (context) => PlantDetails(),),);
      },
      child: Container(
        height: 500,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xfffcf1ef),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(item.image),
                fit: BoxFit.fill,
                )
              ),
            ),
            //AspectRatio(aspectRatio: 1.5/11.0,
            //child: Image.asset(item.image,
            //fit: BoxFit.cover,),
            //),
            SizedBox(height: 2,),
            Container(
              child: Column(
                children: [
                  Text(item.title,
                    style:  TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
