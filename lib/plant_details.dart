

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantflo/model/plant_details_item.dart';

class PlantDetails extends StatefulWidget {
  const PlantDetails({Key? key}) : super(key: key);

  @override
  _PlantDetailsState createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                      child: Column(
                        children: [
                          IconCard(icon: 'assets/images/celsius.png'),
                          SizedBox(height: 40,
                          child: Column(
                            children: [
                              Text('Temprature',
                              style:  TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),),
                              Text('56',
                                style:  TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),)
                            ],
                          ),),
                          IconCard(icon: 'assets/images/tree.png'),
                          SizedBox(height: 40,
                            child: Column(
                              children: [
                                Text('Height',
                                  style:  TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),),
                                Text('56',
                                  style:  TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),)
                              ],
                            ),),
                          IconCard(icon: 'assets/images/brightness.png'),
                          SizedBox(height: 40,
                            child: Column(
                              children: [
                                Text('Sunlight'),
                                Text('56')
                              ],
                            ),),
                          IconCard(icon: 'assets/images/drops.png'),
                          SizedBox(height: 40,
                            child: Column(
                              children: [
                                Text('Water',
                                  style:  TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),),
                                Text('56',
                                  style:  TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),)
                              ],
                            ),),
                        ],
                      ),
                    ),
                Container(
                  height: h * 0.7,
                  width: w * 0.75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50),),
                    image: DecorationImage(
                      image: AssetImage('assets/images/cactus.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' Cactus ',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 40,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                  ),),
                Text('desc',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                  ),),
                SizedBox(height: 30,),
                ElevatedButton.icon(
                  onPressed: () {},
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
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final String icon;
   const IconCard({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(20),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 60,
            color: Colors.lightGreen.withOpacity(0.29),
          ),
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 30,
            color: Colors.lightGreen
          )
        ],
      ),
      child: Image.asset('${icon}',
      color: Colors.lightGreen,),
    );
  }
}
