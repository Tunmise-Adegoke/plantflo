
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantflo/model/plant_item.dart';
import 'package:plantflo/screens/add_plants.dart';
import 'package:plantflo/services/plant_products.dart';
import 'package:plantflo/services/plant_service.dart';
import 'package:provider/provider.dart';


class PlantDetails extends StatefulWidget {
   PlantDetails({Key? key}) : super(key: key);

  @override
  _PlantDetailsState createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
 final value = Provider.of<PlantProducts>(context, listen: false).plantproducts;
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 500,
                  // h * 0.6,
                  // w * 0.75,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(value.first.plantImage),
                        fit: BoxFit.cover,
                        // alignment: Alignment.center
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 400,
                    width: 500,
                  decoration: BoxDecoration(
                    color: Color(0xfffcf1ef),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight:Radius.circular(50),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 30, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(value.first.plantTitle,
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),),
                        Text('desc',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),
                        ),
                     Row(
                       mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                       children: [
                                   IconCard(icon: 'assets/images/celsius.png',
                                   desc: 'Tempearture',
                                   number: '60',),
                                   SizedBox(width: 10,),
                                   IconCard(icon: 'assets/images/tree.png',
                                   desc: 'Height',
                                   number: '70',),
                                   SizedBox(width: 10,),
                                   IconCard(icon: 'assets/images/brightness.png',
                                   desc: 'Sunlight',
                                   number: '50',),
                                   SizedBox(width: 10,),
                                   IconCard(icon: 'assets/images/drops.png',
                                   desc: 'Water',
                                   number: '30',),
                       ],
                     ),
                        SizedBox(height: 30,),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Provider.of<Item>(context).addItem();
                              Navigator.pop(context);

                              //  Navigator.push(context,
                              //  MaterialPageRoute(
                              //  builder: (context) =>
                              //    MyPlantScreen(),),);
                            },
                            label: Text('ADD'),
                            icon: Icon(Icons.add),
                            style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                primary: Colors.lightGreen,
                                onPrimary: Colors.white,
                                elevation: 0,
                                minimumSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}

class IconCard extends StatelessWidget {
  final String icon;
  final String desc;
  final String number;
   const IconCard({Key? key,
  required this.icon,
  required this.desc,
   required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(20),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            // boxShadow: [
            //   BoxShadow(
            //     offset: Offset(0, 15),
            //     blurRadius: 60,
            //     color: Colors.lightGreen.withOpacity(0.29),
            //   ),
            //   BoxShadow(
            //     offset: Offset(2, 2),
            //     blurRadius: 30,
            //     color: Colors.lightGreen
            //   )
            // ],
          ),
          child: Image.asset('${icon}',
          color: Colors.lightGreen,),
        ),
        SizedBox(height: 40,
          child: Column(
            children: [
              Text('${desc}',
                style:  TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),),
              Text('${number}',
                style:  TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),)
            ],
          ),),
      ],
    );
  }
}
