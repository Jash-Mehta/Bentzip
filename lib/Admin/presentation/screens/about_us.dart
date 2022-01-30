import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "ADMIN",
            style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: Responsive.issmallmobile(context) ? 25 : 22,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                CupertinoIcons.back,
                color: Colors.black,
                size: Responsive.issmallmobile(context) ? 35 : 30,
              )),
          actions: [Image.asset('assets/logo.png')],
        ),
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, right: 15.0),
                child: CircleAvatar(
                  radius: 23.0,
                  backgroundColor: Colors.blue[800],
                  child: Image.asset(
                    "assets/About.png",
                    width: 30.0,
                    color: Colors.white,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "ABOUT US",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ])));
  }
}
