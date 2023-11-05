import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/utils/constant.dart';
import 'package:loginapp/app/controller/login_controll.dart';

import 'package:email_validator/email_validator.dart';

// ignore: camel_case_types
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formkey = GlobalKey<FormState>();

  final LoginControl loginController = Get.put(LoginControl());

  final Constans constans = Constans();

  // Method to validate the email the take
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('login page'),
          centerTitle: true,
          backgroundColor: Constans.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 380,
                height: 300,
                decoration: BoxDecoration(
                    color: Constans.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: loginController.usernameController,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Constans.white,
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                              hintText: 'email'),
                          validator: (value) {
                            loginController.isValid = EmailValidator.validate(
                                loginController.usernameController.text);
                            if (value == null || value.isEmpty) {
                              return 'value is empty';
                            } else {
                              if (loginController.isValid) {
                                return null;
                              } else {
                                return 'email not valid';
                              }
                            }
                          },
                        ),
                        Constans().sbHt20,
                        Obx(
                          () => TextFormField(
                            obscureText: loginController.ishidden.value,
                            controller: loginController.userpasswordController,
                            cursorColor: Constans.white,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Constans.white,
                                prefixIcon: const Icon(Icons.lock),
                                border: const OutlineInputBorder(),
                                hintText: 'passsword',
                                suffix: InkWell(
                                    onTap: () {
                                      loginController.togglePasswordView();
                                    },
                                    child: Icon(loginController.ishidden.value
                                        ? Icons.visibility_off
                                        : Icons.visibility))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'value is empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Constans().sbHt20,
                        ElevatedButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                loginController.checkLogin(context);
                              } else {
                                if (kDebugMode) {
                                  print('data is empty');
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Constans.white,
                                elevation: 0.0,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                textStyle: const TextStyle(
                                  color: Constans.white,
                                )),
                            child: const Text('LOG IN',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)))
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
}
