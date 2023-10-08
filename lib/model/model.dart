import 'package:flutter/material.dart';

class modelProduct {
  final int Id;
  final String name;
  final Widget img;
  final int Price;

  modelProduct(
      {required this.Id,
      required this.name,
      required this.img,
      required this.Price});
}

List<modelProduct> product = [
  modelProduct(
      Id: 1,
      name: "Product1",
      img: const Image(
          width: 100,
          height: 100,
          image: AssetImage("lib/assets/images/pngwing.com (6).png")),
      Price: 1522),
  modelProduct(
      Id: 2,
      name: "Product2",
      img: const Image(
          width: 100,
          height: 100,
          image: AssetImage("lib/assets/images/pngwing.com (4).png")),
      Price: 152),
  modelProduct(
      Id: 3,
      name: "Product3",
      img: const Image(
          width: 100,
          height: 100,
          image: AssetImage("lib/assets/images/pngwing.com (0).png")),
      Price: 585),
  modelProduct(
      Id: 4,
      name: "Product4",
      img: const Image(
          width: 100,
          height: 100,
          image: AssetImage("lib/assets/images/pngwing.com (8).png")),
      Price: 878),
  modelProduct(
      Id: 5,
      name: "Product5",
      img: const Image(
          width: 100,
          height: 100,
          image: AssetImage("lib/assets/images/pngwing.com (6).png")),
      Price: 939),
  modelProduct(
      Id: 6,
      name: "Product6",
      img: const Image(
          width: 100,
          height: 100,
          image: AssetImage("lib/assets/images/pngwing.com (5).png")),
      Price: 798),
  modelProduct(
      Id: 7,
      name: "Product7",
      img: const Image(
          width: 100,
          height: 100,
          image: AssetImage("lib/assets/images/pngwing.com (7).png")),
      Price: 147),
  modelProduct(
      Id: 8,
      name: "Product8",
      img: const Image(
          width: 100,
          height: 100,
          image: AssetImage("lib/assets/images/pngwing.com (1).png")),
      Price: 154),
];
