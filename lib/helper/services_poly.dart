
import 'package:dio/dio.dart';
import 'package:latihan_flutter/helper/api.dart';
import 'package:latihan_flutter/model/m_poly.dart';

class ServicesPoly {
  Future<List<Poly>> listData() async {
    final Response response = await Api().get('poly');
    final List data = response.data as List;
    List<Poly> result = data.map((json) => Poly.fromJson(json)).toList();
    return result;
  }
}
