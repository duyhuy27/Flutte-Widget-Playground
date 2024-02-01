import 'package:basic_widget_30_1/functions/auth.dart';
import 'package:flutter/material.dart';

class Day22_Auth extends StatefulWidget {
  const Day22_Auth({super.key});

  @override
  State<Day22_Auth> createState() => _Day22_AuthState();
}

class _Day22_AuthState extends State<Day22_Auth> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = "";
  String password = "";
  String username = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase auth'),
      ),
      body: Center(
          child: Form(
              key: _formKey,
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    isLogin
                        ? Container()
                        : TextFormField(
                            key: ValueKey('username'),
                            decoration:
                                InputDecoration(hintText: 'Enter Username'),
                            validator: (value) {
                              if (value.toString().length < 3) {
                                return 'Username is too smail';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (newValue) {
                              setState(() {
                                username = newValue!;
                              });
                            },
                          ),
                    TextFormField(
                      key: ValueKey('email'),
                      decoration: InputDecoration(hintText: 'Enter Email'),
                      validator: (value) {
                        if (!value.toString().contains('@')) {
                          return 'Invalid Email';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        setState(() {
                          email = newValue!;
                        });
                      },
                    ),
                    TextFormField(
                      key: ValueKey('password'),
                      obscureText: true,
                      decoration: InputDecoration(hintText: 'Enter Password'),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'Password is too smail';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        setState(() {
                          password = newValue!;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            isLogin
                                ? login(email, password)
                                : signup(email, password);
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        child: isLogin
                            ? Text(
                                'Login',
                                style: TextStyle(color: Colors.white),
                              )
                            : Text(
                                'Sign up',
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            isLogin = !isLogin;
                          });
                        },
                        child: isLogin ? Text('Signup') : Text('Login'))
                  ],
                ),
              ))),
    );
  }
}
