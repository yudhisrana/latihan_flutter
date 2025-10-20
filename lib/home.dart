import 'package:flutter/material.dart';
import 'package:latihan_flutter/nav/sidebar.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Dashboard'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      drawer: Sidebar(),
      body: Center(child: const Text('Dashboard')),
    );
  }
}
