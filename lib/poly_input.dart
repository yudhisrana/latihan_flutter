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
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            // Card 1
            GestureDetector(
              child: Card(
                child: ListTile(
                  title: Text('Poly Umum'),
                  onTap: () {
                    Poly polyUmum = Poly(namaPoly: 'Poly Umum');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPoly(poly: polyUmum)));
                  },
                ),
              ),
            ),

            // Card 2
            GestureDetector(
              child: Card(
                child: ListTile(
                  title: Text('Poly Anak'),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        tooltip: "Tambah Data",
        child: Icon(Icons.add),
      ),
    );
  }
}
