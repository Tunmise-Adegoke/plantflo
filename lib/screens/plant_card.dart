import 'package:flutter/material.dart';
import 'package:plantflo/screens/plant_details.dart';
import 'package:plantflo/model/plant_service.dart';

class PlantCard extends StatelessWidget {
  final PlantService plantProducts;
  final int index;
  const PlantCard({
    Key? key,
    required this.plantProducts,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlantDetails(
              index: index,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
                colors: [Colors.white, Colors.lightGreen]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(plantProducts.plantImage),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  child: Text(
                    plantProducts.plantTitle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.normal,
                      fontSize: w * 0.04,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
