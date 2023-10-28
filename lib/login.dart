import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loginapp/bottomnavigation.dart';

import 'package:loginapp/home.dart';
import 'package:email_validator/email_validator.dart';

class loginscreen extends StatelessWidget {
  loginscreen({super.key});
  final _usernameController = TextEditingController();
  final _userpasswordController = TextEditingController();
  bool _isValid = false;
  final _formkey = GlobalKey<FormState>();

  get child => null;
// Method to validate the email the take
// the user email as an input and
// print the bool value in the console.
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('login page'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 19, 96, 106),
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
                          controller: _userpasswordController,
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder(),
                              hintText: 'passsword'),
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
}
