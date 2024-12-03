import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

class comment_page extends StatefulWidget {
  const comment_page({super.key});

  @override
  State<comment_page> createState() => _comment_pageState();
}

class _comment_pageState extends State<comment_page> {
  TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _errorMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                  width: 100,
                  height: 100,
                  child: Image(image: AssetImage('assets/sticker4.jpg')))),
          SizedBox(
            height: 5,
          ),
          Text(
            'Ashley Robinson',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Row(
              children: [
                Text(
                  'Comments',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: _controller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          } else {
                            return null;
                          }
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z0-9]')),
                        ],
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            hintText: 'Write a comment...',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (_errorMessage != null)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(
                _errorMessage!,
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
            ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 470,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_formKey.currentState?.validate() ?? false) {
                    _errorMessage = null;
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.check_circle_outline_outlined,
                                  color: Colors.pinkAccent,
                                  size: 100,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Success!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Thank you for your reviews',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade500),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 300,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Homepage()));
                                    },
                                    child: Text(
                                      'Back to home',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ));
                      },
                    );
                  } else {
                    _errorMessage = 'This field can not be empty.';
                  }
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
