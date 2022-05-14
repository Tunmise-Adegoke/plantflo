
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plantflo/model/plant_item.dart';
import 'package:plantflo/plant_card.dart';
import 'package:plantflo/services/plant_products.dart';
import 'package:plantflo/model/plant_service.dart';
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
     var valueData = Provider.of<PlantProducts>(context).plantproducts;
     ScreenUtil().setSp(30);
     // DateTime now = DateTime.now();
     var timeNow = DateTime.now().hour;
     var message = '';
     if(timeNow <= 12){
       message = 'Good Morning';
     } else if ((timeNow > 12)&& (timeNow <= 16)){
       message = 'Good Afternoon';
    } else if ((timeNow > 16)&& (timeNow <= 20)){
       message = 'Good Evening';
     } else {
       message = 'Good Night';
     }
    return Scaffold(
      backgroundColor: Color(0xfffcf1ef),
      body: SafeArea(
        child: Container(
            color: Color(0xfffcf1ef),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text( message,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,

                      ),),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Find The perfect',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('plant for your home',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                        childAspectRatio: (1/1.5)
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return PlantCard(
                          plantProducts: valueData[index],
                          index: index,
                        );
                      },
                      itemCount: valueData.length,
                       //itemList.map(
                              //(Item) => PlantCard(item: Item),).toList(),
                    ),
                  ),
                ],
              ),
            ),
      ),


    );
  }
}

//   List<Item>_itemList() {
//   return [];
// }