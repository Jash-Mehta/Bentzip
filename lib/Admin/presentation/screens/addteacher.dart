import 'dart:convert';

import 'package:bentzip/Admin/presentation/model/teacher.dart';
import 'package:bentzip/Admin/presentation/widgets/detail.dart';
import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AddTeacher extends StatefulWidget {
  const AddTeacher({Key? key}) : super(key: key);

  @override
  _AddTeacherState createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {
  final Teacher _teacher = Teacher();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "ADMIN", onpressed: () => Navigator.pop(context)),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  " ADD TEACHERS",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          DetailScreen(
            hinttext: "TeacherID",
            inputAction: TextInputAction.next,
            onchange: (value) {
              setState(() {
                _teacher.teacherID = value;
              });
            },
          ),
          DetailScreen(
            inputAction: TextInputAction.next,
            hinttext: "First Name",
            onchange: (value) {
              setState(() {
                _teacher.fName = value;
              });
            },
          ),
          DetailScreen(
            inputAction: TextInputAction.next,
            hinttext: "Middle Name",
            onchange: (value) {
              setState(() {
                _teacher.mName = value;
              });
            },
          ),
          DetailScreen(
            inputAction: TextInputAction.next,
            hinttext: "Last Name",
            onchange: (value) {
              setState(() {
                _teacher.lName = value;
              });
            },
          ),
          DetailScreen(
              inputAction: TextInputAction.next,
              hinttext: "Guardian Name",
              onchange: (value) {
                setState(() {
                  _teacher.gurdianName = value;
                });
              }),
          DetailScreen(
              inputAction: TextInputAction.next,
              hinttext: "Mother Name",
              onchange: (value) {
                setState(() {
                  _teacher.motherName = value;
                });
              }),
          DetailScreen(
              inputAction: TextInputAction.next,
              hinttext: "DOB",
              onchange: (value) {
                setState(() {
                  _teacher.DOB = value;
                });
              }),
          DetailScreen(
              inputAction: TextInputAction.next,
              hinttext: "Gender",
              onchange: (value) {
                setState(() {
                  _teacher.gender = value;
                });
              }),
          DetailScreen(
              inputAction: TextInputAction.next,
              hinttext: "Subject",
              onchange: (value) {
                setState(() {
                  _teacher.subject = value;
                });
              }),
          DetailScreen(
              inputAction: TextInputAction.next,
              hinttext: "Address",
              onchange: (value) {
                setState(() {
                  _teacher.address = value;
                });
              }),
          DetailScreen(
              inputAction: TextInputAction.next,
              hinttext: "Salary",
              keyboardType: TextInputType.phone,
              onchange: (value) {
                setState(() {
                  _teacher.salary = value;
                });
              }),
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: DetailScreen(
                inputAction: TextInputAction.done,
                hinttext: "Class Allot",
                onchange: (value) {
                  setState(() {
                    _teacher.classAlloted = value;
                  });
                }),
          ),
        ]),
      )),
      floatingActionButton: !loading
          ? FloatingActionButton(
              onPressed: () async {
                setState(() {
                  loading = true;
                });
                var data = jsonEncode(_teacher,
                    toEncodable: (value) => Teacher.toJson(value as Teacher));
                var header = {"content-type": "application/json"};
                var res = await http.post(
                    Uri.parse("$adminUrl/teachers/addTeacher"),
                    headers: header,
                    body: data);

                if (res != null) {
                  setState(() {
                    loading = false;
                  });
                  if (res.statusCode == 200) {
                    Navigator.of(context).pop();
                  } else {
                    var body = jsonDecode(res.body);
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Error"),
                              content: Text(body['error']),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("OK"))
                              ],
                            ));
                  }
                }
              },
              child: const Icon(
                Icons.post_add,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue[800],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
