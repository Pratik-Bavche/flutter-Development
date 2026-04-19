import "package:flutter/material.dart";

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String pass = '';

  final formKey = GlobalKey<FormState>();

  void trysubmit() {
    final isValid = formKey.currentState!.validate();
    if (isValid) {
      formKey.currentState!.save();
      submitform();
    } else {
      print("Error");
    }
  }

  void submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(pass);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Widget"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Enter First Name'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'First Name should not be empty!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      firstname = value!;
                    },
                  ),

                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Enter Last Name'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Last Name should not be empty!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      lastname = value!;
                    },
                  ),

                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Enter Email'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Email should not be empty!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value!;
                    },
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration:
                        const InputDecoration(hintText: 'Enter Password'),
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'Password must be at least 6 characters!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      pass = value!;
                    },
                  ),

                  const SizedBox(height: 20),

                  TextButton(
                    onPressed: trysubmit,
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}