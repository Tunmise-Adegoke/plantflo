import 'package:flutter/material.dart';
import 'package:plantflo/initial_builder.dart';
import 'package:plantflo/services/plant_products.dart';
import 'package:plantflo/services/plant_service.dart';
import 'package:plantflo/themes.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
      // Provider<PlantService>(
      //     create: (_) => PlantService(
      //   id: '',
      //   plantTitle: '',
      //   plantImage: ''),
      // ),
          Provider<PlantProducts>(
            create: (_) => PlantProducts(),
          )
        ],
        child: MaterialApp(
         debugShowCheckedModeBanner: false,
          // themeMode: ThemeMode.system,
          // theme: MyThemes.lightTheme,
          // darkTheme: MyThemes.darkTheme,
          home: BottomNavBar(),
        ),
      );
  }
}

