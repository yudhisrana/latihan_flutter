import 'package:flutter/material.dart';
import 'package:latihan_flutter/model/m_poly.dart';

class DetailPoly extends StatefulWidget {
  final Poly poly;

  const DetailPoly({super.key, required this.poly});

  @override
  State<DetailPoly> createState() => _DetailPolyState();
}

class _DetailPolyState extends State<DetailPoly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Poly'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text("Nama Poly"),
          SizedBox(height: 20),
          Text(widget.poly.namaPoly),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Edit")),
              ElevatedButton(onPressed: () {}, child: Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
