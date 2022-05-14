import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantflo/initial_builder.dart';
import 'package:plantflo/screens/home.dart';
import 'package:plantflo/services/plantList.dart';
import 'package:plantflo/services/plant_products.dart';
import 'package:plantflo/model/plant_service.dart';
import 'package:provider/provider.dart';

class MyPlantScreen extends StatefulWidget {
 late final int index;
  @override
  _MyPlantScreenState createState() => _MyPlantScreenState();
}

class _MyPlantScreenState extends State<MyPlantScreen> {


  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<PlantList>(context).plantItems;
    final value = Provider.of<PlantProducts>(context, listen: false).plantproducts;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Plants',
        style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 25,
          fontWeight: FontWeight.normal,
        ),),
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BottomNavBar(),),);
          },
        ),
      ),
      backgroundColor: Color(0xfffcf1ef),
      body: cart.length == 0
      ? Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NoitemCard(),
              ),
              Text(
                  'You are seem lonely, add Plant to list!',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ))
      : ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cart.length,
          itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 15),
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(image:
                AssetImage(cart[index].plantImage),
                  fit: BoxFit.cover,),
              ),
              // child: Image.asset('assets/images/PPP.jpg',
              ),
            title: Text(cart[index].plantTitle,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 20,
                fontWeight: FontWeight.normal,),
            ),
            ),
        );
      },
      ),
    );
  }
}

class NoitemCard extends StatelessWidget {
  const NoitemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage('assets/images/no plants image.jpg'),
        fit: BoxFit.cover),
      ),
    );
  }
}

