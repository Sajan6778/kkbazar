import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  bool _obscureText = true;

  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var MediaQuery1 = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
          body: SafeArea(
        child: Container(
            // decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         colors: [Colors.pink, Colors.blue],
            //         begin: Alignment.centerLeft,
            //         end: Alignment.centerRight)),
            child: ListView(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    width: 400,
                    height:700,
                    alignment: Alignment.center,
                    child: Container(
                        height:450,
                        width: 600,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 230, 228, 228)),
                        child: Form(
                            key: formkey,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                    height:40,
                                      width: 100,
                                      child: Center(
                                        child: Text(
                                          "Login",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:40,
                                      width: 300,
                                      child: TextFormField(
                                        onChanged: (value) {},
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.person,
                                              color: Colors.blue,
                                            ),
                                            labelText: "Type your username",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20))),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                     height:40,
                                      width: 300,
                                      child: TextField(
                                        obscureText: _obscureText,
                                        decoration: InputDecoration(
                                          labelText: 'Password',
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          prefixIcon: Icon(
                                            Icons.password,
                                            color: Colors.blue,
                                          ),
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _obscureText = !_obscureText;
                                              });
                                            },
                                            child: Icon(_obscureText
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(),
                                      height:20,
                                      width: 200,
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text("Forgot password?")),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:40,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: LinearGradient(
                                              colors: [
                                                Colors.pink,
                                                Colors.blue
                                              ],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight),
                                          border: Border.all(width: 1)),
                                      child: Center(
                                        child: TextButton(
                                            onPressed: () =>
                                                Navigator.pushNamed(
                                                    context, "savaari"),
                                            child: Center(
                                              child: Text(
                                                "Login",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 150,
                                      child: Center(
                                          child: Center(
                                              child: Text("Or signup using"))),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:40,
                                      width: 200,
                                      child: Center(
                                        child: Center(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.facebook,
                                                size: 30,
                                              ),
                                              color: Colors.blue,
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(BoxIcons.bxl_google),
                                                color: Colors.blue),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(EvaIcons.twitter),
                                                color: Colors.blue),
                                          ],
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 60,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:  20,
                                      width: 150,
                                      child: Center(
                                          child: Center(
                                        child: Text("Or signup using"),
                                      )),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:20,
                                      width:100,
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "register");
                                          },
                                          child: Center(
                                            child: Text("Sign up"),
                                          )),
                                    )
                                  ],
                                )
                              ],
                            ))))
              ])
            ])),
      ));
  }
}
