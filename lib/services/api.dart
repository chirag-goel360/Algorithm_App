import 'dart:convert';
import 'package:algorithm_app/models/TechModel.dart';

class TechApi {
  static List<Techniques> allTechniquesFromJson(String jsonData) {
    List<Techniques> techniques = [];
    json
        .decode(jsonData)['techniques']
        .forEach((tech) => techniques.add(_forMap(tech)));
    return techniques;
  }

  static Techniques _forMap(Map<String, dynamic> map) {
    return Techniques(
      name: map['name'],
      description: map['description'],
      id: map['id'],
      imageurl: map['image_url'],
      data: map['data'],
    );
  }
}
