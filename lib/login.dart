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
      decoration: const InputDecoration(labelText: "Username"),
      controller: _userName,
    );
  }

  _passwordField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: "Username"),
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
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            } else {
              AlertDialog alertDialog = AlertDialog(
                content: const Text("Username Atau Password Tidak Terdaftar"),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("OK"))
                ],
              );

              showDialog(context: context, builder: (context) => alertDialog);
            }
          },
          child: const Text("Login")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 24),
          child: SafeArea(
              child: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Login Admin",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Form(
                    key: _formKey,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Column(
                        children: [
                          // form username
                          const SizedBox(
                            height: 20,
                          ),
                          _userNameField(),

                          // form password
                          const SizedBox(
                            height: 20,
                          ),
                          _passwordField(),

                          // button login
                          const SizedBox(
                            height: 30,
                          ),
                          _btnLogin()
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
