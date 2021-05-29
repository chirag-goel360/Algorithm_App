import 'package:flutter/material.dart';

class Techniques {
  final String name;
  final String description;
  final int id;
  final String imageurl;
  final String data;

  Techniques({
    @required this.name,
    this.description,
    @required this.id,
    @required this.imageurl,
    @required this.data,
  });
}
