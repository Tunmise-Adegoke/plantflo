
import 'package:flutter/material.dart';
import 'package:plantflo/model/plant_item.dart';
import 'package:plantflo/screens/add_plants.dart';
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
 final value = Provider.of<PlantService>(context, listen: false);
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
                            IconCard(icon: 'assets/images/celsius.png',
                            desc: 'Tempearture',
                            number: '60',),
                            SizedBox(height: 20,),
                            IconCard(icon: 'assets/images/tree.png',
                            desc: 'Height',
                            number: '70',),
                            SizedBox(height: 20,),
                            IconCard(icon: 'assets/images/brightness.png',
                            desc: 'Sunlight',
                            number: '50',),
                            SizedBox(height: 20,),
                            IconCard(icon: 'assets/images/drops.png',
                            desc: 'Water',
                            number: '30',),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                  Container(
                    height: h * 0.7,
                    width: w * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50), bottomLeft: Radius.circular(50),),
                      image: DecorationImage(
                        image: AssetImage(value.plantImage),
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
                  Text(value.plantTitle,
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
                    ),),
                  SizedBox(height: 30,),
                  ElevatedButton.icon(
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
