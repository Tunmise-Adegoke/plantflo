import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plantflo/initial_builder.dart';
import 'package:plantflo/services/plant_list.dart';
import 'package:plantflo/services/plant_products.dart';
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
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) => MultiProvider(
        providers: [
          Provider<PlantProducts>(
            create: (_) => PlantProducts(),
          ),
          Provider<PlantList>(
            create: (_) => PlantList(),
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          // themeMode: ThemeMode.system,
          // theme: MyThemes.lightTheme,
          // darkTheme: MyThemes.darkTheme,
          home: BottomNavBar(),
        ),
      ),
    );
  }
}
