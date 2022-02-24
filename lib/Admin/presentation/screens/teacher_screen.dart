import 'dart:convert';
import 'package:bentzip/Admin/presentation/model/about_teacher.dart';
import 'package:bentzip/Admin/presentation/screens/addteacher.dart';
import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/constants.dart';

import 'package:http/http.dart' as http;

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({Key? key}) : super(key: key);

  @override
  _TeacherScreenState createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  Future? _teachers;

  @override
  void initState() {
    _teachers = getTeachers();
    super.initState();
  }

  Future getTeachers() async {
    var res = await http.get(Uri.parse("$adminUrl/teachers"));
    return (jsonDecode(res.body) as List).map((e) => Teacher_semi.fromJson(e));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "ADMIN", onpressed: () => Navigator.pop(context)),
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
        Container(
          margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
              borderRadius: BorderRadius.circular(25.0)),
          child: TextFormField(
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "  Employee ID",
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
            keyboardType: TextInputType.text,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 3.0, right: 5.0, top: 10.0),
          child: Table(
            children: const [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Employee ID",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Class alot",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Subject",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
              ])
            ],
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 5.0, top: 5.0),
          child: FutureBuilder(
            future: _teachers,
            builder: (context, data) {
              if (data.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (data.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount: (data.data as Iterable).length,
                  itemBuilder: (BuildContext context, int index) {
                    Teacher_semi teacher =
                        (data.data as Iterable).toList()[index];
                    return Table(
                      children: [
                        TableRow(
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                border: Border.symmetric(
                                    horizontal: BorderSide.none)),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const AlertDialog();
                                      },
                                    );
                                  },
                                  child: Text(
                                    teacher.teacherID,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  teacher.name,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  teacher.classAlloted,
                                  style: const TextStyle(color: Colors.black),
                                )),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      teacher.subject,
                                    ),
                                  )),
                            ])
                      ],
                    );
                  },
                );
              }

              return const Center(
                child: Text(
                  "Error",
                  style: TextStyle(color: Colors.red),
                ),
              );
            },
          ),
        )),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const AddTeacher()))
              .then((value) {
            setState(() {
              _teachers = getTeachers();
            });
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[800],
      ),
    );
  }
}
