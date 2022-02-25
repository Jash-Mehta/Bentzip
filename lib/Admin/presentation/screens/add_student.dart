import 'dart:convert';

import 'package:bentzip/Admin/presentation/model/student.dart';
import 'package:bentzip/Admin/presentation/widgets/detail.dart';
import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:http/http.dart' as http;

import '../../../constants.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final Student _student = Student();
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
                    "assets/Users.png",
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "ADD STUDENT",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          /**
                  #------------------Everything is avaiable in this DetailScreen like-----------#
                  {
                  onChanged
                  onSaved
                  Controller
                  keyboardtype
                  }
                  #------------------------Example is Showed Below------------------------#
               */
          DetailScreen(
            inputAction: TextInputAction.next,
            hinttext: "Student ID",
            onchange: (value) {
              setState(() {
                _student.studentID = value;
              });
            },
          ),
          DetailScreen(
            hinttext: "First Name",
            onchange: (value) {
              setState(() {
                _student.fName = value;
              });
            },
            inputAction: TextInputAction.next,
          ),
          DetailScreen(
            hinttext: "Middle Name",
            onchange: (value) {
              setState(() {
                _student.mName = value;
              });
            },
            inputAction: TextInputAction.next,
          ),
          DetailScreen(
              hinttext: "Last Name",
              onchange: (value) {
                setState(() {
                  _student.lName = value;
                });
              },
              inputAction: TextInputAction.next),
          DetailScreen(
              hinttext: "Father Name",
              onchange: (value) {
                setState(() {
                  _student.fatherName = value;
                });
              },
              inputAction: TextInputAction.next),
          DetailScreen(
              hinttext: "Mother Name",
              onchange: (value) {
                setState(() {
                  _student.motherName = value;
                });
              },
              inputAction: TextInputAction.next),
          DetailScreen(
              hinttext: "DOB",
              onchange: (value) {
                setState(() {
                  _student.DOB = value;
                });
              },
              inputAction: TextInputAction.next),
          DetailScreen(
              hinttext: "Gender",
              onchange: (value) {
                setState(() {
                  _student.gender = value;
                });
              },
              inputAction: TextInputAction.next),
          DetailScreen(
              hinttext: "Fee",
              onchange: (value) {
                setState(() {
                  _student.fee = value;
                });
              },
              keyboardType: TextInputType.phone,
              inputAction: TextInputAction.next),
          DetailScreen(
              hinttext: "Class",
              onchange: (value) {
                setState(() {
                  _student.sClass = value;
                });
              },
              inputAction: TextInputAction.next),
          DetailScreen(
              hinttext: "Address",
              onchange: (value) {
                setState(() {
                  _student.address = value;
                });
              },
              inputAction: TextInputAction.next),
          DetailScreen(
              hinttext: "Author",
              onchange: (value) {
                setState(() {
                  _student.author = value;
                });
              },
              inputAction: TextInputAction.next),
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: DetailScreen(
                hinttext: "BusRoute",
                onchange: (value) {
                  setState(() {
                    _student.busRoute = value;
                  });
                },
                inputAction: TextInputAction.done),
          ),
        ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            loading = true;
          });
          var data = jsonEncode(_student,
              toEncodable: (value) => Student.toJson(value as Student));
          var header = {"content-type": "application/json"};
          var res = await http.post(Uri.parse("$adminUrl/students/addStudent"),
              headers: header, body: data);

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
      ),
    );
  }
}
