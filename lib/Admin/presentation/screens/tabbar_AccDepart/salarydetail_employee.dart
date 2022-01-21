import 'package:bentzip/Admin/presentation/model/Employee_salarydata.dart';
import 'package:flutter/material.dart';

class EmployeeSalary extends StatefulWidget {
  const EmployeeSalary({Key? key}) : super(key: key);

  @override
  _EmployeeSalaryState createState() => _EmployeeSalaryState();
}

class _EmployeeSalaryState extends State<EmployeeSalary> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(left: 3.0, right: 5.0, top: 10.0),
        child: Table(
          children: const [
            TableRow(children: [
              Text(
                "EMPLOYEES",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "SALARY",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "STATUS",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 17),
                ),
              ),
              Text("")
            ])
          ],
        ),
      ),
      Expanded(
          child: Container(
        margin: const EdgeInsets.only(left: 10.0, right: 5.0, top: 5.0),
        child: ListView.builder(
          itemCount: salarydata.length,
          itemBuilder: (BuildContext context, int index) {
            EmployeeSalaryData employeeSalary = salarydata[index];
            return Table(
              border:
                  TableBorder(verticalInside: BorderSide(color: Colors.black)),
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      employeeSalary.employeename,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      employeeSalary.salary,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20.0,
                      width: 15.0,
                      decoration: const BoxDecoration(color: Colors.black54),
                      child: Center(
                          child: Text(
                        employeeSalary.status,
                        style: const TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.edit),
                  )
                ])
              ],
            );
          },
        ),
      ))
    ]);
  }
}
