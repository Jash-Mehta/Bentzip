import 'package:bentzip/Admin/presentation/model/Employee_salarydata.dart';
import 'package:bentzip/Admin/presentation/model/about_teacher.dart';
import 'package:bentzip/Admin/presentation/model/studentfeedata.dart';
import 'package:bentzip/Admin/presentation/widgets/student_feedetail_row.dart';
import 'package:bentzip/Admin/presentation/widgets/worktop.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/material.dart';

class StudentFee extends StatefulWidget {
  const StudentFee({Key? key}) : super(key: key);

  @override
  _StudentFeeState createState() => _StudentFeeState();
}

class _StudentFeeState extends State<StudentFee> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 5.0),
          child: TextFormField(
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Employee ID",
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
            keyboardType: TextInputType.text,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 3.0, right: 5.0, top: 10.0),
        child: Table(
          children: [
            TableRow(children: [
              WorkTop(title: "Student ID"),
              WorkTop(title: "Name"),
              WorkTop(title: "Class"),
              WorkTop(title: "Status"),
              WorkTop(title: "Pending Months"),
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
        /**
        # -----------------------------ListView Builder Start From Here----------------#
         */
        child: ListView.builder(
          itemCount: feedata.length,
          itemBuilder: (BuildContext context, int index) {
            StudentFeeData studentSalary = feedata[index];
            return Table(
              // border:
              // TableBorder(verticalInside: BorderSide(color: Colors.black)),
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
                        border: Border.symmetric(horizontal: BorderSide.none)),
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
                            studentSalary.studentid,
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
                          studentSalary.name,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          studentSalary.division,
                          style: const TextStyle(color: Colors.black),
                        )),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              studentSalary.status,
                              style: TextStyle(
                                  color:
                                      (studentSalary.status.contains('Pending')
                                          ? Colors.red
                                          : Colors.green),
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              studentSalary.pendingmonths,
                              style: TextStyle(
                                  color:
                                      (studentSalary.status.contains('Pending')
                                          ? Colors.red
                                          : Colors.green),
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ])
              ],
            );
          },
        ),
      ))
    ]);
  }
}
