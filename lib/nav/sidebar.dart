import 'package:flutter/material.dart';
import 'package:latihan_flutter/poly.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Dipo Yudhisrana'),
            accountEmail: Text('dipoyudhisrana@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 40,
                color: Colors.blueAccent,
              ),
            ),
          ),
          ListTile(leading: Icon(Icons.home), title: Text('H O M E')),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('P O L Y'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPoly()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_2),
            title: Text('P E G A W A I'),
          ),
          ListTile(
            leading: Icon(Icons.person_3_outlined),
            title: Text('P A S I E N'),
          ),
        ],
      ),
    );
  }
}
