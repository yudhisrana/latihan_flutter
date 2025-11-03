import 'package:flutter/material.dart';
import 'package:latihan_flutter/helper/user_info.dart';
import 'package:latihan_flutter/home.dart';
import 'package:latihan_flutter/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  print(token);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Aplikasi Klinik",
    home: token == null ? const Login() : const Home(),
  ));
}
