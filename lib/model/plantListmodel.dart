


class PlantListModel {
  String? id;
  String? plantTitle;
  String? plantImage;

  PlantListModel({
   required this.id,
   required this.plantTitle,
   required this.plantImage
});

  PlantListModel.fromMap(Map<dynamic , dynamic> res)
  : id = res['id'],
  plantTitle = res['plantTitle'],
  plantImage = res['plantImage'];
  Map<String, Object?> toMap(){
    return {
      'id' : id,
      'plantTitle' : plantTitle,
      'plantImage' : plantImage
    };
  }
}
