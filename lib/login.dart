import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/bottomnavigation.dart';

import 'package:loginapp/home.dart';
import 'package:email_validator/email_validator.dart';

// ignore: camel_case_types
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

// ignore: camel_case_types
class _loginscreenState extends State<loginscreen> {
  final _usernameController = TextEditingController();

  final _userpasswordController = TextEditingController();

  bool _isValid = false;

  final _formkey = GlobalKey<FormState>();

  bool _ishidden = false;

  @override

  // Method to validate the email the take
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('login page'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 19, 96, 106),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color.fromARGB(255, 19, 96, 106),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                              hintText: 'email'),
                          validator: (value) {
                            _isValid = EmailValidator.validate(
                                _usernameController.text);
                            if (value == null || value.isEmpty) {
                              return 'value is empty';
                            } else {
                              if (_isValid) {
                                return null;
                              } else {
                                return 'email not valid';
                              }
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: _ishidden,
                          controller: _userpasswordController,
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                              hintText: 'passsword',
                              suffix: InkWell(
                                  onTap: () {
                                    _togglePasswordView();
                                  },
                                  child: Icon(_ishidden
                                      ? Icons.visibility
                                      : Icons.visibility_off))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'value is empty';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              checklogin(context);
                            } else {
                              if (kDebugMode) {
                                print('data is empty');
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              // fixedSize: const Size(
                              //   00,
                              //   50,
                              // ),
                              backgroundColor:
                                  Color.fromARGB(255, 252, 249, 249)),
                          icon: const Icon(
                            Icons.check,
                            color: Color.fromARGB(0, 174, 32, 32),
                          ),
                          label: const Text('login',
                              style: TextStyle(
                                fontSize: 30.0,
                                color: Color.fromARGB(255, 112, 39, 39),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checklogin(BuildContext context) {
    const String username = 'ashimsha222@gmail.com';

    const String password = 'ashim';

    final _username = _usernameController.text;

    final _password = _userpasswordController.text;

    if (_username == username && _password == password) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => bottomnavi()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Color.fromARGB(255, 224, 87, 77),
        content: Text("username or password does't match"),
        duration: Duration(seconds: 9),
      ));
    }
  }

  void _togglePasswordView() {
    setState(() {
      _ishidden = !_ishidden;
    });
  }
}
