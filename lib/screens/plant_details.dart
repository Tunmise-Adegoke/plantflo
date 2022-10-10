import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:plantflo/model/plant_item.dart';
import 'package:plantflo/screens/home.dart';

import 'package:plantflo/services/plant_list.dart';
import 'package:plantflo/services/plant_products.dart';

import 'package:provider/provider.dart';

class PlantDetails extends StatefulWidget {
  final int index;
  const PlantDetails({Key? key, required this.index}) : super(key: key);

  @override
  _PlantDetailsState createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    final value =
        Provider.of<PlantProducts>(context, listen: false).plantproducts;
    int index = widget.index;
    final snackBar = SnackBar(
      content: Text('Yay! ${value[index].plantTitle} added'),
    );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: h * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(value[index].plantImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back_ios_new),
              iconSize: 30,
              color: Colors.black,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: h * 0.54,
              width: w * 100,
              decoration: const BoxDecoration(
                  color: Color(0xfffcf1ef),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: ListView(
                  children: [
                    Text(
                      value[index].plantTitle,
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: w * 0.06,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    Text(
                      'desc',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: w * 0.05,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    SizedBox(
                      height: h * 0.18,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: plantCategory.length,
                          itemBuilder: ((context, index) {
                            return IconCard(index: index);
                          })),
                    ),
                    SizedBox(
                      height: h * 0.03,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        context.read<PlantList>().add(value[index]);

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.of(context).pop();
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
            ),
          )
        ],
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final int index;
  const IconCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            padding: const EdgeInsets.all(20),
            height: h * 0.10,
            width: w * 0.20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Image.asset(
              plantCategory[index].image,
              color: Colors.lightGreen,
            ),
          ),
        ),
        Text(
          plantCategory[index].name,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 15.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          plantCategory[index].num.toString(),
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 15.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
