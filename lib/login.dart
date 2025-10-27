import 'package:flutter/material.dart';
import 'package:latihan_flutter/helper/services.dart';
import 'package:latihan_flutter/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // var
  final _formKey = GlobalKey();
  final _userName = TextEditingController();
  final _password = TextEditingController();

  _userNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _userName,
    );
  }

  _passwordField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _password,
      obscureText: true,
    );
  }

  _btnLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () async {
            // Kredensial
            String username = _userName.text;
            String password = _password.text;
            bool value = await LoginService().login(username, password);

            if (value) {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            } else {
              AlertDialog alertDialog = AlertDialog(
                content: Text("Username Atau Password Tidak Terdaftar"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("OK"))
                ],
              );

              showDialog(context: context, builder: (context) => alertDialog);
            }
          },
          child: Text("Login")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
