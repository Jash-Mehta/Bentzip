import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: 
           SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [    
                  Container(
                      margin: const EdgeInsets.only(left: 65.0, top: 30.0),
                      child: Image.asset(
                        "assets/logo.png",
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.width * 0.5,
                      )),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Center(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Username",
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          )),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key_rounded),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20.0),
                    child: SizedBox(
                      height: 50.0,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue[900]),
                          onPressed: () {
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          child: const Text(
                            "LOG IN",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  )
                ],
              ),
            )
         
    ));
  }
}
