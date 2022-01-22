import 'package:bentzip/Admin/presentation/widgets/detail.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({Key? key}) : super(key: key);

  @override
  _TeacherScreenState createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
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
                    "assets/teacher.png",
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "ABOUT TEACHERS",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(height: 15.0),
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 30.0),
            child: Text(
              "Teachers Details",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.issmallmobile(context) ? 25 : 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15.0),
          /**
           Name field....
           */
          DetailScreen(
              hinttext: "Name",
              onpressedAdd: () {
                print("Added");
              },
              onpressedDelete: () {
                print("Delete");
              }),
          const SizedBox(height: 15.0),
          /**
           Qualification field.....
           */
          DetailScreen(
              hinttext: "Qualifications",
              onpressedAdd: () {
                print("Added");
              },
              onpressedDelete: () {
                print("Delete");
              }),
          const SizedBox(height: 15.0),
          /**
           Documents field....
           */
          DetailScreen(
              hinttext: "Documents",
              onpressedAdd: () {
                print("Added");
              },
              onpressedDelete: () {
                print("Delete");
              }),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 50.0),
              child: SizedBox(
                height: 40.0,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                    onPressed: () {
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    child: const Text(
                      "UPDATE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          )
        ])));
  }
}
