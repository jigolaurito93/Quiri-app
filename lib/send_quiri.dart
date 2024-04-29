import 'package:flutter/material.dart';

class SendQuiri extends StatefulWidget {
  const SendQuiri({super.key});

  @override
  State<SendQuiri> createState() => _SendQuiriState();
}

class _SendQuiriState extends State<SendQuiri> {
  final _formKey = GlobalKey<FormState>();

  String message = "";

  @override
  Widget build(BuildContext context) {
    String? userId;
    String? userQuestion;
    String? userContext;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Send Quiri',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email or user ID*',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          userId = value;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!value.contains('@')) {
                            return 'Please enter a valid email';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Write an opening question*',
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              icon: const Icon(Icons.info_outline),
                              onPressed: () {},
                            )
                          ]),
                      TextFormField(
                        onChanged: (value) {
                          userQuestion = value;
                        },
                        maxLines: 4,
                        minLines: 3,
                        maxLength: 300,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(172, 172, 172, 1)),
                          hintText: "i.e. How should we divide the chores?",
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required*';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Context',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextFormField(
                        onChanged: (value) {
                          userContext = value;
                        },
                        maxLength: 500,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processing Data'),
                                ),
                              );
                              message = "validated!";
                            } else {
                              message = 'Invalid!';
                            }
                            print(userId);
                            print(userQuestion);
                            print(userContext);
                            print(message);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor:
                                const Color.fromRGBO(255, 149, 104, 1),
                            foregroundColor: Colors.white,
                            minimumSize: const Size(200, 50.0),
                          ),
                          child: const Text('Send Quiri'),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
