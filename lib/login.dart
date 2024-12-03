import 'package:flutter/material.dart';
import 'package:untitled1/home_page.dart';

// class LogInPage extends StatefulWidget {
//   const LogInPage({super.key});
//
//   @override
//   State<LogInPage> createState() => _LogInPageState();
// }
//
// class _LogInPageState extends State<LogInPage> {
//   final GlobalKey<FormState> _formKey =
//       GlobalKey<FormState>(); // Added for form validation
//   final TextEditingController _emailController =
//       TextEditingController(); // Controller for email
//   final TextEditingController _passwordController =
//       TextEditingController(); // Controller for password
//
//   // Correct credentials
//   final String correctEmail = "vasya@gmail.com";
//   final String correctPassword = "qwe124";
//
//   void _validateAndLogin() {
//     if (_formKey.currentState!.validate()) {
//       if (_emailController.text == correctEmail &&
//           _passwordController.text == correctPassword) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => Homepage()),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Incorrect email or password')),
//         );
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(left: 20),
//         child: Form(
//           // Wrap with Form
//           key: _formKey, // Link the Form to the key
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 50),
//                 child: Container(
//                     width: 120,
//                     height: 120,
//                     child: Image(image: AssetImage('assets/sticker4.jpg'))),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Welcome!',
//                 style: TextStyle(
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 35),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Hi, Enter your details to sign in \nto your account',
//                 style: TextStyle(
//                     decoration: TextDecoration.none,
//                     color: Colors.grey,
//                     fontWeight: FontWeight.w200,
//                     fontSize: 15),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 width: 490,
//                 child: TextFormField(
//                   controller: _emailController, // Bind the email controller
//                   decoration: InputDecoration(
//                       labelText: 'Email',
//                       prefixIcon: Icon(Icons.email_outlined),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10))),
//                   validator: (value) {
//                     final trimmedValue =
//                         value?.trim(); // Handles null values safely
//                     if (trimmedValue == null || trimmedValue.isEmpty) {
//                       return 'Please enter your email';
//                     } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[a-zA-Z]{2,}$')
//                         .hasMatch(trimmedValue)) {
//                       return 'Enter a valid email address';
//                     }
//                     return null; // Input is valid
//                   },
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 width: 490,
//                 child: TextFormField(
//                   controller:
//                       _passwordController, // Bind the password controller
//                   obscureText: true, // Hide the password
//                   decoration: InputDecoration(
//                       labelText: 'Password',
//                       prefixIcon: Icon(Icons.password_outlined),
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10))),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your password';
//                     }
//                     return null; // Valid input
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 'Forgot Password?',
//                 style: TextStyle(
//                     decoration: TextDecoration.none,
//                     color: Colors.blue,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 15),
//               ),
//               SizedBox(height: 25),
//               Container(
//                 width: 490,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: _validateAndLogin, // Call validation on press
//                   child: Text(
//                     'Login',
//                     style: TextStyle(color: Colors.white, fontSize: 21),
//                   ),
//                   style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(
//                           Colors.deepPurpleAccent)),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                   width: 490,
//                   height: 50,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => registration()));
//                     },
//                     child: Text(
//                       ' Registration',
//                       style: TextStyle(color: Colors.white, fontSize: 21),
//                     ),
//                     style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all<Color>(
//                             Colors.deepPurpleAccent)),
//                   )),
//               SizedBox(
//                 height: 25,
//               ),
//               Text(
//                 'Or Sign In via',
//                 style: TextStyle(
//                     decoration: TextDecoration.none,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 15),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     width: 150,
//                     height: 50,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Icon(
//                         FontAwesomeIcons.google,
//                         size: 15,
//                         color: Colors.orange,
//                       ),
//                       style: ButtonStyle(
//                         side: MaterialStateProperty.all(
//                             BorderSide(color: Colors.grey, width: 1)),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: 150,
//                     height: 50,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Icon(
//                         FontAwesomeIcons.apple,
//                         size: 20,
//                         color: Colors.black,
//                       ),
//                       style: ButtonStyle(
//                         side: MaterialStateProperty.all(
//                             BorderSide(color: Colors.grey, width: 1)),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: 150,
//                     height: 50,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Icon(
//                         FontAwesomeIcons.facebook,
//                         size: 20,
//                         color: Colors.blue,
//                       ),
//                       style: ButtonStyle(
//                         side: MaterialStateProperty.all(
//                             BorderSide(color: Colors.grey, width: 1)),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'registration.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final String correctEmail = 'vasya@gmail.com';
  final String correctPassword = 'qwe124';

  void _validateEmailandPassword() {
    if (_formKey.currentState!.validate()) {
      if (_email.text == correctEmail && _password.text == correctPassword) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Incorrect email or password')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _email,
                  validator: (value) {
                    final trimmedValue = value?.trim();
                    if (trimmedValue == null || trimmedValue.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(
                            r'^[\w-][\w-\.]*@([\w-]+\.)+[a-zA-Z]{2,}$')
                        .hasMatch(trimmedValue)) {
                      return 'Enter a valid email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'Email address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: _password,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outlined),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: _validateEmailandPassword,
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => registration()));
                      ;
                    },
                    child: Text(
                      'Registration',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
