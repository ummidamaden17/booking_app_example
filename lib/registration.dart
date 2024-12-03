import 'package:flutter/material.dart';
import 'package:untitled1/home_page.dart';

// class registration extends StatelessWidget {
//   const registration({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'RegistrationPage',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Registration',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//           ),
//           centerTitle: true,
//         ),
//         body: thisPage(),
//       ),
//     );
//   }
// }
//
// class thisPage extends StatefulWidget {
//   const thisPage({super.key});
//
//   @override
//   State<thisPage> createState() => _thisPageState();
// }
//
// class _thisPageState extends State<thisPage> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   String? selectedGender;
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _ageController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   //
//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Registration Successful!')));
//     } else {
//       FocusScope.of(context).requestFocus(FocusNode());
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Form(
//         key: _formKey,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Center(
//               child: Container(
//                 alignment: Alignment.center,
//                 width: 130,
//                 height: 130,
//                 child: ClipRRect(
//                     child: Image(image: AssetImage('assets/sticker4.jpg'))),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               width: 455,
//               child: TextFormField(
//                 controller: _nameController,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your full name';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                     label: Text(
//                       'Full Name',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                     prefixIcon: Icon(Icons.person),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Colors.white54,
//                         width: 1.0,
//                       ),
//                     )),
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 22, top: 12, bottom: 12),
//                   child: Text(
//                     'Example: Ashley Robinson',
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               width: 455,
//               child: TextFormField(
//                 controller: _ageController,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your age';
//                   }
//                   if (int.tryParse(value) == null || int.parse(value) <= 0) {
//                     return 'Enter a valid age';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                     label: Text(
//                       'Age',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                     prefixIcon: Icon(Icons.calendar_today),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Colors.white54,
//                         width: 1.0,
//                       ),
//                     )),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 455,
//               child: DropdownButtonFormField<String>(
//                 value: selectedGender, // Initial value
//                 items: ['Male', 'Female', 'Other']
//                     .map((gender) => DropdownMenuItem(
//                           value: gender,
//                           child: Text(gender),
//                         ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedGender = value; // Update selected gender
//                   });
//                 },
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please select your gender';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                   label: Text(
//                     'Gender',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.black),
//                   ),
//                   prefixIcon: Icon(Icons.people),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Colors.white54,
//                       width: 1.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 455,
//               child: TextFormField(
//                 controller: _emailController,
//                 validator: (value) {
//                   final trimmedValue = value?.trim();
//                   if (trimmedValue == null || trimmedValue.isEmpty) {
//                     return 'Please enter your email';
//                   } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[a-zA-Z]{2,}$')
//                       .hasMatch(trimmedValue)) {
//                     return 'Enter a valid email address';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                     label: Text(
//                       'Email',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                     prefixIcon: Icon(Icons.email_outlined),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Colors.white54,
//                         width: 1.0,
//                       ),
//                     )),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 455,
//               child: TextFormField(
//                 controller: _passwordController,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   }
//                 },
//                 decoration: InputDecoration(
//                     label: Text(
//                       'Password',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                     prefixIcon: Icon(Icons.password_outlined),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Colors.white54,
//                         width: 1.0,
//                       ),
//                     )),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 455,
//               child: TextFormField(
//                 controller: _phoneController,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your phone number';
//                   } else if (value.length != 11 ||
//                       !RegExp(r'^\d{11}$').hasMatch(value)) {
//                     return 'Phone number must be exactly 11 digits';
//                   }
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                     label: Text(
//                       'Phone Number',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                     prefixIcon: Icon(Icons.phone),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Colors.white54,
//                         width: 1.0,
//                       ),
//                     )),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 455,
//               height: 45,
//               child: ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text('Registration Successful!')),
//                     );
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) => Homepage()),
//                     );
//                   } else {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                           content:
//                               Text('Please complete all fields correctly')),
//                     );
//                   }
//                 },
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.check,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       'Register',
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ],
//                 ),
//                 style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all(Colors.deepPurpleAccent),
//                     shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)))),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? selectedGender;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _age,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    } else if (int.tryParse(value) == null ||
                        int.parse(value) <= 0) {
                      return 'Enter a valid age';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today_sharp),
                      labelText: 'Age',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButtonFormField<String>(
                  value: selectedGender,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please choose your gender';
                    }
                    return null;
                  },
                  items: ['Male', 'Female', 'Other']
                      .map((gender) =>
                          DropdownMenuItem(value: gender, child: Text(gender)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                  decoration: InputDecoration(
                      labelText: 'Select a gender',
                      prefixIcon: Icon(Icons.safety_divider),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
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
                  controller: _password,
                  validator: (value) {
                    final trimmedValue = value?.trim();
                    if (trimmedValue == null || trimmedValue.isEmpty) {
                      return 'Please enter your password';
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
                TextFormField(
                  controller: _phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone';
                    } else if (!RegExp(r'^\d{11,}$').hasMatch(value)) {
                      return 'Phone number must be exactly 11 digits';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: 'Phone number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 1,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Registrated Successfully')));
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                      } else {
                        FocusScope.of(context).requestFocus(FocusNode());
                      }
                    },
                    child: Text(
                      'Submit',
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
