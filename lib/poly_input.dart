import 'package:flutter/material.dart';
import 'package:latihan_flutter/model/m_poly.dart';
import 'package:latihan_flutter/poly_detail.dart';

class PolyInput extends StatefulWidget {
  const PolyInput({super.key});

  @override
  State<PolyInput> createState() => _PolyInputState();
}

class _PolyInputState extends State<PolyInput> {
  final _formKey = GlobalKey();
  final _nmPoly = TextEditingController();

  _namaPoly() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Poly"),
      controller: _nmPoly,
    );
  }

  _btnSimpan() {
    return ElevatedButton(onPressed: () {}, child: Text("Simpan Data"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Poly'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  _namaPoly(),
                  SizedBox(
                    height: 35,
                  ),
                  _btnSimpan(),
                ],
              ),
            )),
      ),
    );
  }
}
