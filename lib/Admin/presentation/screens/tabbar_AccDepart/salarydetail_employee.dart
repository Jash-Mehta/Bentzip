import 'package:bentzip/Admin/presentation/model/Employee_salarydata.dart';
import 'package:flutter/material.dart';

class EmployeeSalary extends StatefulWidget {
  const EmployeeSalary({Key? key}) : super(key: key);

  @override
  _EmployeeSalaryState createState() => _EmployeeSalaryState();
}

class _EmployeeSalaryState extends State<EmployeeSalary> {
  final _formKey = GlobalKey<FormState>();
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
                padding: EdgeInsets.only(left: 12.0),
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
                  "Designation",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Status",
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
        child: ListView.builder(
          itemCount: employeesalarydata.length,
          itemBuilder: (BuildContext context, int index) {
            EmployeeSalaryData employeeSalary = employeesalarydata[index];
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
                        border: Border.symmetric(horizontal: BorderSide.none)),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width:
                                        MediaQuery.of(context).size.width * 2.0,
                                    child: Form(
                                        key: _formKey,
                                        child: Column(
                                          children: [],
                                        )),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            employeeSalary.employeeID,
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
                          employeeSalary.name,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          employeeSalary.designation,
                          style: const TextStyle(color: Colors.black),
                        )),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              employeeSalary.status,
                              style: TextStyle(
                                  color:
                                      (employeeSalary.status.contains('Pending')
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
