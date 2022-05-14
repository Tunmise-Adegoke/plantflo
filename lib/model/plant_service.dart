import 'package:flutter/foundation.dart';


class PlantService extends ChangeNotifier {
  String id;
  String plantTitle;
  String plantImage;

  PlantService({
     required this.id,
     required this.plantTitle,
     required this.plantImage,
});


}
