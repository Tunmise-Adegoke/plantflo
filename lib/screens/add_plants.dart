import 'package:flutter/material.dart';
import 'package:plantflo/initial_builder.dart';
import 'package:plantflo/screens/home.dart';
import 'package:plantflo/services/plant_service.dart';
import 'package:provider/provider.dart';

class MyPlantScreen extends StatefulWidget {

  @override
  _MyPlantScreenState createState() => _MyPlantScreenState();
}

class _MyPlantScreenState extends State<MyPlantScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Plants'),
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        toolbarHeight: 70,
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BottomNavBar(),),);
          },
        ),
      ),
      // body: Consumer<PlantService>(
      //   builder: (context, value, child)
      body: ListView.builder(
          itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            height: 70,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 30,
                ),
                SizedBox(width: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Title'),
                    Text('Other name'),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
