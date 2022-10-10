import 'package:flutter/material.dart';
import 'package:plantflo/initial_builder.dart';
import 'package:plantflo/services/plant_list.dart';
import 'package:provider/provider.dart';

class MyPlantScreen extends StatefulWidget {
  const MyPlantScreen({Key? key}) : super(key: key);

  
  @override
  _MyPlantScreenState createState() => _MyPlantScreenState();
}

class _MyPlantScreenState extends State<MyPlantScreen> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<PlantList>(context).plantItems;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Plants',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 25,
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
      body: context.watch<PlantList>().plantItems.isEmpty
          ? Center(
              child: Column(
              children: const [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: NoitemCard(),
                ),
                Text(
                  'You seem lonely, add Plant to list!',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ))
          : ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: context.watch<PlantList>().count,
              itemBuilder: (context, index) {
                return Dismissible(
                  key:
                      const Key('context.read<PlantList>().remove(cart[index]'),
                  direction: DismissDirection.horizontal,
                  background: Container(
                    color: Colors.red,
                    child: const Icon(Icons.delete_rounded),
                  ),
                  onDismissed: (DismissDirection direction) {
                    context.read<PlantList>().remove(index);
                  },
                  confirmDismiss: (DismissDirection direction) async {
                    return await showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              title: const Text('Delete Confirmation'),
                              content:
                                  const Text('Are you sure you want to delete'),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: const Text('Cancel'),
                                  style: ElevatedButton.styleFrom(
                                    textStyle: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    primary: Colors.grey,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    context.read<PlantList>().remove(index);
                                    Navigator.of(context).pop(true);
                                  },
                                  child: const Text('Delete'),
                                  style: ElevatedButton.styleFrom(
                                    textStyle: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    primary: Colors.red,
                                  ),
                                ),
                              ]);
                        });
                  },
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 15),
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                            image: AssetImage(cart[index].plantImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        cart[index].plantTitle,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
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
        image: const DecorationImage(
            image: AssetImage('assets/images/no plants image.jpg'),
            fit: BoxFit.cover),
      ),
    );
  }
}
