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
    final value = Provider.of<PlantProducts>(context, listen: false).plantproduct;
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
      body: context.watch<PlantList>().plantItems.isEmpty
      ? Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: NoitemCard(),
              ),
              Text(
                  'You seem lonely, add Plant to list!',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ))
      : ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: context.watch<PlantList>().count,
            itemBuilder: (context, index) {
          return Dismissible(
            key: Key('context.read<PlantList>().remove(cart[index]'),
            direction: DismissDirection.horizontal,
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete_rounded),
            ),
            onDismissed: (DismissDirection direction){
              context.read<PlantList>().remove(index);
            },
            confirmDismiss: (DismissDirection direction) async{
              return await showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text('Delete Confirmation'),
                      content: Text('Are you sure you want to delete'),
                      actions: [
                        ElevatedButton(onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                            child: Text('Cancel'),
                            style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    ),
                    primary: Colors.grey,),),
                        ElevatedButton(onPressed: () {
                          context.read<PlantList>().remove(index);
                          Navigator.of(context).pop(true);
                        },
                          child: Text('Delete'),
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                            primary: Colors.red,),),
                      ]
                    );
                  });
            },
            child: Card(
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

