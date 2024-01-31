import 'package:flutter/material.dart';

class FormWidged extends StatefulWidget {
  const FormWidged({super.key});

  @override
  State<FormWidged> createState() => _FormWidgedState();
}

class _FormWidgedState extends State<FormWidged> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();

  // !TODO ------------------FUNCTIONS---------------------!!
  trysubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print('Error');
    }
  }

  submitForm() {
    setState(() {
      firstname = firstname;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                key: const ValueKey('firstname'),
                decoration:
                    const InputDecoration(hintText: 'Enter your First Name'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'First name should not be empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  firstname = newValue.toString();
                },
              ),
              TextFormField(
                key: const ValueKey('lastname'),
                decoration:
                    const InputDecoration(hintText: 'Enter your Last Name'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Last name should not be empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  lastname = newValue.toString();
                },
              ),
              TextFormField(
                key: const ValueKey('email'),
                decoration: const InputDecoration(hintText: 'Enter your Email'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Email should not be empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  email = newValue.toString();
                },
              ),
              TextFormField(
                obscureText: true,
                key: const ValueKey('password'),
                decoration:
                    const InputDecoration(hintText: 'Enter your Password'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Password should not be empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  password = newValue.toString();
                },
              ),
              TextButton(
                onPressed: () {
                  trysubmit();
                },
                child: const Text('Submit'),
              ),
              Text(firstname),
              Text(lastname),
              Text(email),
              Text(password),
            ],
          ),
        )),
      ),
    );
  }
}
