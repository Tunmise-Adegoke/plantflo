class PlantCategories {
  final String name;
  final String image;
  final int num;

  PlantCategories({
    required this.name,
    required this.image,
    required this.num,
  });
}

List<PlantCategories> plantCategory = [
  PlantCategories(
    name: 'Tempearture',
    image: 'assets/images/celsius.png',
    num: 60,
  ),
  PlantCategories(
    name: 'Height',
    image: 'assets/images/tree.png',
    num: 70,
  ),
  PlantCategories(
    name: 'Sunlight',
    image: 'assets/images/brightness.png',
    num: 50,
  ),
  PlantCategories(
    name: 'Water',
    image: 'assets/images/drops.png',
    num: 30,
  ),
];
