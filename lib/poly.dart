import 'package:flutter/material.dart';
import 'package:latihan_flutter/model/m_poly.dart';
import 'package:latihan_flutter/nav/bottom.dart';
import 'package:latihan_flutter/nav/sidebar.dart';
import 'package:latihan_flutter/poly_detail.dart';
import 'package:latihan_flutter/poly_input.dart';

class PolyPage extends StatefulWidget {
  const PolyPage({super.key});

  @override
  State<PolyPage> createState() => _PolyPageState();
}

class _PolyPageState extends State<PolyPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text('Poly'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      drawer: Sidebar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            GestureDetector(
              child: Card(child: ListTile(title: Text("Poly Umum"))),
              onTap: () {
                Poly polyUmum = Poly(namaPoly: 'Poly Umum');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPoly(poly: polyUmum),
                  ),
                );
              },
            ),
            GestureDetector(
              child: Card(child: ListTile(title: Text("Poly Anak"))),
              onTap: () {
                Poly polyAnak = Poly(namaPoly: 'Poly Anak');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPoly(poly: polyAnak),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => InputPoly()),
          );
        },
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        tooltip: "Tambah Data",
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNav(scaffoldkey: _scaffoldkey),
    );
  }
}
