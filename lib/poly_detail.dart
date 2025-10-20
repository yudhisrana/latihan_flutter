import 'package:flutter/material.dart';
import 'package:latihan_flutter/model/m_poly.dart';
import 'package:latihan_flutter/poly.dart';
import 'package:latihan_flutter/poly_update.dart';

class DetailPoly extends StatefulWidget {
  final Poly poly;

  const DetailPoly({super.key, required this.poly});

  @override
  State<DetailPoly> createState() => _DetailPolyState();
}

class _DetailPolyState extends State<DetailPoly> {
  // tombol edit
  _btnEdit() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => UpdatePoly(poly: widget.poly)));
        },
        child: Text("Ubah"));
  }

  // tombol hapus
  _btnHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: Text("Yakin untuk menghapus data ini?"),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PolyPage()));
                  },
                  child: Text("Ya")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Tidak")),
            ],
          );

          showDialog(context: context, builder: (context) => alertDialog);
        },
        child: Text("Hapus"));
  }

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
          Text("NAMA POLY :"),
          SizedBox(height: 20),
          Text(widget.poly.namaPoly),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _btnEdit(),
              _btnHapus(),
            ],
          )
        ],
      ),
    );
  }
}
