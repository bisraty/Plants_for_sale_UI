import 'package:flutter/material.dart';
const PrimaryColor = Color(0xFF0C9869);
const TextColor = Color(0xFF3C4046);
const BackgroundColor = Color(0xFFF9F8FD);


class plants {
  String image;
  String name;
  String Price;

  plants({required this.image, required this.name,required this.Price});
}


class ListOfPlants {
  List<plants> _listOfPlants = [];

  ListOfPlants() {
    _listOfPlants.add(plants(image: "assets/images/img.png",
        name: "tulip", Price: '150 birr'));
    _listOfPlants.add(plants(image: "assets/images/image_1.png",
        name: "SAMANTHA", Price: '100 birr'));
    _listOfPlants.add(plants(image: "assets/images/image_2.png",
        name: "ANGELICA", Price: '120 birr'));
    _listOfPlants.add(plants(image: "assets/images/image_3.png",
        name: "SAMANTHA", Price: '110 birr'));
  }
  List<plants> get getListOfWets => _listOfPlants;
}