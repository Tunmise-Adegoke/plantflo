import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantflo/initial_builder.dart';
import 'package:plantflo/screens/home.dart';
import 'package:plantflo/services/plant_products.dart';
import 'package:plantflo/services/plant_service.dart';
import 'package:provider/provider.dart';

class MyPlantScreen extends StatefulWidget {

  @override
  _MyPlantScreenState createState() => _MyPlantScreenState();
}

class _MyPlantScreenState extends State<MyPlantScreen> {


  @override
  Widget build(BuildContext context) {
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
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: value.length,
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
                AssetImage('assets/images/PPP.jpg',),
                  fit: BoxFit.cover,),
              ),
              // child: Image.asset('assets/images/PPP.jpg',
              ),
            title: Text('Plant Name',
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




// class PlantListCard extends StatelessWidget {
//   const PlantListCard({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Container(
//         padding: EdgeInsets.only(left: 20, top: 10),
//         height: 70,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30)
//         ),
//         child: Row(
//           children: [
//             CircleAvatar(
//               backgroundColor: Colors.blue,
//               radius: 30,
//             ),
//             SizedBox(width: 30,),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Text('Title',
//                 style: TextStyle(
//                   fontFamily: 'Nunito',
//                   fontSize: 15,
//                   fontWeight: FontWeight.normal,
//                 ),),
//                 Text('Other name',
//                 ),),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
