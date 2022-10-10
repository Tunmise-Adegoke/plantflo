import 'package:flutter/material.dart';
import 'package:plantflo/initial_builder.dart';
import 'plant_list_screen.dart';

class NewPlantScreen extends StatefulWidget {
  const NewPlantScreen({Key? key}) : super(key: key);

  @override
  _NewPlantScreenState createState() => _NewPlantScreenState();
}

class _NewPlantScreenState extends State<NewPlantScreen> {
  TextEditingController nameText = TextEditingController();

  @override
  void dispose() {
    nameText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Plants',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.lightGreen,
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNavBar(),
              ),
            );
          },
        ),
      ),
      backgroundColor: const Color(0xfffcf1ef),
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Make a Plant Happy',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              backgroundColor: Colors.lightGreen,
              radius: 90,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 50),
              child: TextField(
                controller: nameText,
                cursorColor: Colors.lightGreen,
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.grass_rounded,
                      color: Colors.lightGreen,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.lightGreen,
                    )),
                    hintText: 'Name this plant',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyPlantScreen(),
                  ),
                );
              },
              label: const Text('ADD'),
              icon: const Icon(Icons.add),
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  primary: Colors.lightGreen,
                  onPrimary: Colors.white,
                  elevation: 0,
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ],
        ),
      ),
    );
  }
}
