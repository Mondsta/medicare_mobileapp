import 'package:flutter/material.dart';

import '../models/models.dart';

final List<ShoeModel> availableobat = [
  ShoeModel(
    name: "PANADOL",
    model: "FLU & BATUK",
    price: 13000,
    imgAddress: "assets/images/paracetamol.png",
    modelColor: const Color(0xffDE0106),
  ),
  ShoeModel(
    name: "OBAT FLU",
    model: "Paracetamol",
    price: 19000,
    imgAddress: "assets/images/paracetamol.png",
    modelColor: const Color(0xffDE0106),
  ),
];

List<ShoeModel> itemsOnBag = [];


final List<double> sizes = [0, 1, 2, 3];
