
import 'package:flutter/material.dart';
import 'package:plantflo/model/plant_item.dart';
import 'package:plantflo/plant_card.dart';
import 'package:plantflo/services/plant_products.dart';
import 'package:plantflo/services/plant_service.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // late List<Item> itemList;
  final scrollController = ScrollController(initialScrollOffset: 0);


  @override
  Widget build(BuildContext context) {
     var valueData = Provider.of<PlantProducts>(context);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        elevation: 0,
        backgroundColor: Color(0xffa1ba9b),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        actions: [

        ],
      ),
      backgroundColor: Color(0xfffcf1ef),
      body: Container(
          color: Color(0xfffcf1ef),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text('Find The perfect ',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),),
                SizedBox(height: 5,),
                Text('plant for your home',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     TextButton(
                //         onPressed: (){},
                //         child: Text('Top Picks'),
                //     style: TextButton.styleFrom(
                //       primary: Colors.white,
                //       backgroundColor: Colors.lightGreen,
                //       minimumSize: Size(20, 20),
                //      // maximumSize: Size(40, 25),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(20)
                //       ),
                //       textStyle: TextStyle(
                //         fontFamily: 'Nunito',
                //         fontSize: 20,
                //         fontWeight: FontWeight.normal,
                //       ),
                //     ),
                //     ),
                //     TextButton(
                //       onPressed: (){},
                //       child: Text('Indoor'),
                //       style: TextButton.styleFrom(
                //         primary: Colors.white,
                //         backgroundColor: Colors.lightGreen,
                //         minimumSize: Size(20, 20),
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20)
                //         ),
                //         textStyle: TextStyle(
                //           fontFamily: 'Nunito',
                //           fontSize: 20,
                //           fontWeight: FontWeight.normal,
                //         ),
                //       ),
                //     ),
                //     TextButton(
                //       onPressed: (){},
                //       child: Text('OutDoor'),
                //       style: TextButton.styleFrom(
                //         primary: Colors.white,
                //         backgroundColor: Colors.lightGreen,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20)
                //         ),
                //         textStyle: TextStyle(
                //           fontFamily: 'Nunito',
                //           fontSize: 20,
                //           fontWeight: FontWeight.normal,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: GridView.builder(
                    controller: scrollController,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return PlantCard();
                    },
                    itemCount: valueData.plantproducts.length,
                     //itemList.map(
                            //(Item) => PlantCard(item: Item),).toList(),
                  ),
                ),
              ],
            ),
          ),


    );
  }
}

//   List<Item>_itemList() {
//   return [];
// }