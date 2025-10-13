import 'package:flutter/material.dart';
import 'package:latihan_flutter/model/m_poly.dart';
import 'package:latihan_flutter/poly_detail.dart';

class PolyInput extends StatelessWidget {
  const PolyInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: InputPoly());
  }
}

class InputPoly extends StatelessWidget {
  const InputPoly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Poly'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }
}
