import 'package:flutter/material.dart';
import 'package:plantflo/initial_builder.dart';

import 'plant_list_screen.dart';
import 'home.dart';

class NewPlantScreen extends StatefulWidget {
   NewPlantScreen({Key? key}) : super(key: key);

  @override
  _NewPlantScreenState createState() => _NewPlantScreenState();

}

class _NewPlantScreenState extends State<NewPlantScreen> {
  @override
  TextEditingController nameText = TextEditingController();

  @override
  void dispose(){
    nameText.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Plants',
        style:  TextStyle(
          fontFamily: 'Nunito',
          fontSize: 20,
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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text('Make a Plant Happy',
              style:  TextStyle(
                fontFamily: 'Nunito',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 20,),
            CircleAvatar(
              backgroundColor: Colors.lightGreen,
              radius: 90,
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 50),
              child: TextField(
                controller: nameText,
                cursorColor: Colors.lightGreen,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.grass_rounded, color: Colors.lightGreen,),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightGreen,
                    )
                  ),
                  hintText: 'Name this plant',
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 17,
                  )
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyPlantScreen(),),);
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
        ),
      ),
    );
  }
}
