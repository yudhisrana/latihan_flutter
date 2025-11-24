import 'package:flutter/foundation.dart';

class Poly {
  String? id;
  String namaPoly;

  Poly({this.id, required this.namaPoly});

  Factory Poly.fromJson(Map<String, dynamic> json) => Poly(id: json['id'], namaPoly: (json['namaPoly']));

  Map<String, dynamic> toJson()=> {'namaPoly' : namaPoly};
}