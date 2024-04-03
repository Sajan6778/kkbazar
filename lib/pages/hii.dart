// import 'package:flutter/material.dart';

// Padding(
//                             padding: const EdgeInsets.only(left: 50.0, top: 10.0),
//                             child: Divider(
//                               height: 10,
//                               thickness: 2,
//                               endIndent: 1280,
//                               color: Color(0xffEF8F21),
//                             ),
//                           ),
//                           SizedBox(height: 50.0),
//                           Container(
//                               color: Colors.pink,
//                               child:
//                                Padding(
//                                 padding: const EdgeInsets.only(left: 50.0),
//                                 child: Row(
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text("user ID",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 100.0),
//                                             Container(
//                                               width: 315,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                   color: Color(0x2bef8f21)),
//                                               child: TextFormField(
//                                                 decoration: InputDecoration(
//                                                   border: OutlineInputBorder(
//                                                     borderSide: BorderSide.none,
//                                                   ),
//                                                 ), // controller: emailController,
//                                                 autovalidateMode: AutovalidateMode
//                                                     .onUserInteraction,
//                                                 // validator: validateEmail,
//                                                 // contentPadding:
//                                                 //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 40.0),

//                                         Row(
//                                           children: [
//                                             SizedBox(width: 164.0),
//                                             Checkbox(
//                                               checkColor: Color(0xffEF8F21),
//                                               fillColor:
//                                                   MaterialStateProperty.resolveWith(
//                                                       getColor),
//                                               value: isChecked,
//                                               onChanged: (bool? value) {
//                                                 setState(() {
//                                                   isChecked = value!;
//                                                 });
//                                               },
//                                             ),
//                                             SizedBox(width: 10.0),
//                                             Text("Remember me",
//                                                 style: TextStyle(
//                                                     fontSize: 17,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 130.0),
//                                             Text("Forget email?",
//                                                 style: TextStyle(
//                                                     fontSize: 17,
//                                                     color: Colors.black))
//                                           ],
//                                         ),
//                                         SizedBox(height: 40.0),
//                                         Row(
//                                           children: [
//                                             Text("Date of Birth",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 85.0),
//                                             Container(
//                                               width: 350,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                   color: Color(0x2bef8f21)),
//                                               child: TextFormField(
//                                                 controller: dateOfBirth,
//                                                 validator: (value) {
//                                                   if (value == null ||
//                                                       value.isEmpty) {
//                                                     return 'Please enter your date of birth';
//                                                   }

//                                                   final RegExp dateRegex = RegExp(
//                                                       r'^\d{4}-\d{2}-\d{2}$'); // Date format: YYYY-MM-DD

//                                                   if (!dateRegex
//                                                       .hasMatch(value)) {
//                                                     return 'Please enter a valid date in the format YYYY-MM-DD';
//                                                   }

//                                                   return null;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   // suffixIcon: DropdownButton<String>(
//                                                   //   underline: SizedBox(),
//                                                   //   icon: Icon(
//                                                   //     Icons.arrow_drop_down_outlined,
//                                                   //     size: 40,
//                                                   //     color: Colors.black,
//                                                   //   ),
//                                                   //   items: <String>[
//                                                   //     'A',
//                                                   //     'B',
//                                                   //     'C',
//                                                   //     'D'
//                                                   //   ].map((String value) {
//                                                   //     return DropdownMenuItem<String>(
//                                                   //       value: value,
//                                                   //       child: Text(value),
//                                                   //     );
//                                                   //   }).toList(),
//                                                   //   onChanged: (newValue) {
//                                                   //     setState(() {});
//                                                   //   },
//                                                   // ),
//                                                   hintText: 'YYYY-MM-DD',
//                                                   hintStyle: TextStyle(
//                                                     fontSize: 18,
//                                                   ),
//                                                   border: OutlineInputBorder(
//                                                     borderSide: BorderSide.none,
//                                                   ),
//                                                 ), // controller: emailController,

//                                                 // validator: validateEmail,
//                                                 // contentPadding:
//                                                 //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 30.0),
//                                         Row(
//                                           children: [
//                                             Text("Phone Number 1",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 48.0),
//                                             Container(
//                                               width: 350,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                   color: Color(0x2bef8f21)),
//                                               child: TextFormField(
//                                                 controller: number1Controller,
//                                                 validator: (value) {
//                                                   if (value == null ||
//                                                       value.isEmpty) {
//                                                     return "Please enter a Phone number.";
//                                                   }

//                                                   if (value.length != 10) {
//                                                     return "Please enter a valid 10-digit Phone number.";
//                                                   }

//                                                   // Check if the value contains only numeric digits
//                                                   if (!RegExp(r'^[0-9]+$')
//                                                       .hasMatch(value)) {
//                                                     return "Phone number should contain only numbers.";
//                                                   }

//                                                   return null;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   hintText: 'xxxxxxxxxx',
//                                                   hintStyle: TextStyle(
//                                                     fontSize: 18,
//                                                   ),
//                                                   border: OutlineInputBorder(
//                                                     borderSide: BorderSide.none,
//                                                   ),
//                                                 ),

//                                                 // contentPadding:
//                                                 //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 30.0),
//                                         Row(
//                                           children: [
//                                             Text("Password",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 115.0),
//                                             Container(
//                                               width: 350,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(4),
//                                                 color: Color(0x2bef8f21),
//                                               ),
//                                               child: TextFormField(
//                                                 // validator: validatePassword,

//                                                 validator: (value) {
//                                                   if (value == null ||
//                                                       value.isEmpty) {
//                                                     return "Please enter a password.";
//                                                   }
//                                                   if (value.length < 8) {
//                                                     return "Password must be atleast 8 characters long.";
//                                                   }
//                                                   return null;
//                                                 },
//                                                 obscureText: _isobscured1,
//                                                 controller: _pass,
//                                                 decoration: InputDecoration(
//                                                   hintText: 'Password',
//                                                   hintStyle: TextStyle(
//                                                     fontSize: 18,
//                                                   ),
//                                                   suffixIcon: IconButton(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .symmetric(
//                                                                 horizontal:
//                                                                     12.0,
//                                                                 vertical: 5.0),
//                                                     icon: _isobscured1
//                                                         ? const Icon(
//                                                             Icons.visibility)
//                                                         : const Icon(Icons
//                                                             .visibility_off),
//                                                     onPressed: () =>
//                                                         setState(() {
//                                                       _isobscured1 =
//                                                           !_isobscured1;
//                                                     }),
//                                                   ),
//                                                   border:
//                                                       const OutlineInputBorder(
//                                                           borderSide:
//                                                               BorderSide.none),
//                                                   // contentPadding: EdgeInsets.symmetric(
//                                                   //   vertical: 12.0,
//                                                   //   horizontal: 5.0,
//                                                   // ),
//                                                 ),
//                                                 // style: TextStyle(fontSize: 18),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(width: 130.0),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Row(
//                                           children: [
//                                             Text("User Name",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 110.0),
//                                             Container(
//                                               width: 315,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                   color: Color(0x2bef8f21)),
//                                               child: TextFormField(
//                                                 validator: (value) {
//                                                   if (value == null ||
//                                                       value.isEmpty) {
//                                                     return "Enter your name.";
//                                                   }
//                                                   RegExp nameRegExp =
//                                                       RegExp(r'^[a-z A-z]+$');
//                                                   if (!nameRegExp
//                                                       .hasMatch(value)) {
//                                                     return "Enter correct name.";
//                                                   }
//                                                   return null;
//                                                 },
//                                                 controller: nameController,
//                                                 decoration: InputDecoration(
//                                                   hintText: 'your name',
//                                                   hintStyle: TextStyle(
//                                                     fontSize: 18,
//                                                   ),
//                                                   border: OutlineInputBorder(
//                                                     borderSide: BorderSide.none,
//                                                   ),
//                                                 ),
//                                                 // contentPadding:
//                                                 //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 30.0),
//                                         Row(
//                                           children: [
//                                             Text("Gender",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 158.0),
//                                             Container(
//                                               width: 315,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                   color: Color(0x2bef8f21)),
//                                               child: TextFormField(
//                                                 validator: (value) {
//                                                   if (value == null ||
//                                                       value.isEmpty) {
//                                                     return "Enter your Gender.";
//                                                   }
//                                                   return null;
//                                                 },
//                                                 controller: genderController,
//                                                 decoration: InputDecoration(
//                                                   hintText: 'your Gender',
//                                                   hintStyle: TextStyle(
//                                                     fontSize: 18,
//                                                   ),
//                                                   border: OutlineInputBorder(
//                                                     borderSide: BorderSide.none,
//                                                   ),
//                                                 ),
//                                                 // contentPadding:
//                                                 //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 30.0),
//                                         Row(
//                                           children: [
//                                             Text("Phone Number 2",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 50.0),
//                                             Container(
//                                               width: 315,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                   color: Color(0x2bef8f21)),
//                                               child: TextFormField(
//                                                 controller: number2Controller,
//                                                 validator: (value) {
//                                                   if (value == null ||
//                                                       value.isEmpty) {
//                                                     return "Please enter a Phone number.";
//                                                   }

//                                                   if (value.length != 10) {
//                                                     return "Please enter a valid 10-digit Phone number.";
//                                                   }

//                                                   // Check if the value contains only numeric digits
//                                                   if (!RegExp(r'^[0-9]+$')
//                                                       .hasMatch(value)) {
//                                                     return "Phone number should contain only numbers.";
//                                                   }

//                                                   return null;
//                                                 },
//                                                 decoration: InputDecoration(
//                                                   hintText: 'xxxxxxxxxx',
//                                                   hintStyle: TextStyle(
//                                                     fontSize: 18,
//                                                   ),
//                                                   border: OutlineInputBorder(
//                                                     borderSide: BorderSide.none,
//                                                   ),
//                                                 ),

//                                                 // contentPadding:
//                                                 //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 30.0),
//                                         Row(
//                                           children: [
//                                             Text("Confirm Password",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 22.0),
//                                             Container(
//                                               width: 315,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                   color: Color(0x2bef8f21)),
//                                               child: TextFormField(
//                                                   obscureText: _isobscured,
//                                                   decoration: InputDecoration(
//                                                     suffixIcon: IconButton(
//                                                         padding:
//                                                             EdgeInsetsDirectional
//                                                                 .only(
//                                                                     end: 12.0),
//                                                         icon: _isobscured
//                                                             ? const Icon(Icons
//                                                                 .visibility)
//                                                             : const Icon(Icons
//                                                                 .visibility_off),
//                                                         onPressed: () =>
//                                                             setState(() {
//                                                               _isobscured =
//                                                                   !_isobscured;
//                                                             })),
//                                                     hintText: 'password',
//                                                     hintStyle: TextStyle(
//                                                       fontSize: 18,
//                                                     ),
//                                                     border: OutlineInputBorder(
//                                                       borderSide:
//                                                           BorderSide.none,
//                                                     ),
//                                                   ),
//                                                   controller: _confirmPass,
//                                                   validator: (String? value) {
//                                                     if (value == null ||
//                                                         value.isEmpty) {
//                                                       return "Please enter  re-password.";
//                                                     }
//                                                     if (_pass.text !=
//                                                         _confirmPass.text) {
//                                                       return "Password Do Not Match.";
//                                                     }
//                                                     return null;
//                                                   }),

//                                               // controller: emailController,
//                                               // validator: validateEmail,
//                                               // contentPadding:
//                                               //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                             ),
//                                           ],
//                                         ),
//                                         SizedBox(height: 30.0),
//                                         Row(
//                                           children: [
//                                             Text("Gender",
//                                                 style: TextStyle(
//                                                     fontSize: 24,
//                                                     color: Colors.black)),
//                                             SizedBox(width: 160.0),
//                                             Container(
//                                               width: 222,
//                                               height: 50,
//                                               decoration: BoxDecoration(
//                                                   borderRadius:
//                                                       BorderRadius.circular(4),
//                                                   color: Color(0x2bef8f21)),
//                                               child: TextFormField(
//                                                 decoration: InputDecoration(
//                                                   suffixIcon: DropdownButton<String>(
//                                                     underline: SizedBox(),
//                                                     icon: Icon(
//                                                       Icons.arrow_drop_down_outlined,
//                                                       size: 40,
//                                                       color: Colors.black,
//                                                     ),
//                                                     items: <String>[
//                                                       'A',
//                                                       'B',
//                                                       'C',
//                                                       'D'
//                                                     ].map((String value) {
//                                                       return DropdownMenuItem<String>(
//                                                         value: value,
//                                                         child: Text(value),
//                                                       );
//                                                     }).toList(),
//                                                     onChanged: (newValue) {
//                                                       setState(() {});
//                                                     },
//                                                   ),
//                                                   border: OutlineInputBorder(
//                                                     borderSide: BorderSide.none,
//                                                   ),
//                                                 ), // controller: emailController,
//                                                 autovalidateMode: AutovalidateModeA
//                                                     .onUserInteraction,
//                                                 // validator: validate
//                                                 // ,
//                                                 // contentPadding:
//                                                 //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               )
                        












































//                                                Expanded(
//                                                   child: Container(
//                                                 child: Text("Date of Birth",
//                                                     style: TextStyle(
//                                                         fontSize: 24,
//                                                         color: Colors.black)),
//                                               )),
//                                               Expanded(
//                                                   child: Container(
//                                                 decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             4),
//                                                     color: Color(0x2bef8f21)),
//                                                 child: TextFormField(
//                                                   controller: dateOfBirth,
//                                                   validator: (value) {
//                                                     if (value == null ||
//                                                         value.isEmpty) {
//                                                       return 'Please enter your date of birth';
//                                                     }

//                                                     final RegExp dateRegex = RegExp(
//                                                         r'^\d{4}-\d{2}-\d{2}$'); // Date format: YYYY-MM-DD

//                                                     if (!dateRegex
//                                                         .hasMatch(value)) {
//                                                       return 'Please enter a valid date in the format YYYY-MM-DD';
//                                                     }

//                                                     return null;
//                                                   },
//                                                   decoration: InputDecoration(
                                                    
//                                                     hintText: 'YYYY-MM-DD',
//                                                     hintStyle: TextStyle(
//                                                       fontSize: 18,
//                                                     ),
//                                                     border: OutlineInputBorder(
//                                                       borderSide:
//                                                           BorderSide.none,
//                                                     ),
//                                                   ), 
//                                                 ),
//                                               )),






















//                                                 Expanded(
//                                                   child: Container(
//                                                 child: Text("Confirm Password",
//                                                     style: TextStyle(
//                                                         fontSize: 24,
//                                                         color: Colors.black)),
//                                               )),
//                                               Expanded(
//                                                   child: Container(
//                                                 decoration: BoxDecoration(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             4),
//                                                     color: Color(0x2bef8f21)),
//                                                 child: TextFormField(
//                                                     obscureText: _isobscured,
//                                                     decoration: InputDecoration(
//                                                       suffixIcon: IconButton(
//                                                           padding:
//                                                               EdgeInsetsDirectional
//                                                                   .only(
//                                                                       end:
//                                                                           12.0),
//                                                           icon: _isobscured
//                                                               ? const Icon(Icons
//                                                                   .visibility)
//                                                               : const Icon(Icons
//                                                                   .visibility_off),
//                                                           onPressed: () =>
//                                                               setState(() {
//                                                                 _isobscured =
//                                                                     !_isobscured;
//                                                               })),
//                                                       hintText: 'password',
//                                                       hintStyle: TextStyle(
//                                                         fontSize: 18,
//                                                       ),
//                                                       border:
//                                                           OutlineInputBorder(
//                                                         borderSide:
//                                                             BorderSide.none,
//                                                       ),
//                                                     ),
//                                                     controller: _confirmPass,
//                                                     validator: (String? value) {
//                                                       if (value == null ||
//                                                           value.isEmpty) {
//                                                         return "Please enter  re-password.";
//                                                       }
//                                                       if (_pass.text !=
//                                                           _confirmPass.text) {
//                                                         return "Password Do Not Match.";
//                                                       }
//                                                       return null;
//                                                     }),

//                                                 // controller: emailController,
//                                                 // validator: validateEmail,
//                                                 // contentPadding:
//                                                 //     EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
//                                               ))