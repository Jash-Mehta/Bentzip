import 'package:bentzip/Admin/presentation/model/Employee_salarydata.dart';
import 'package:bentzip/Admin/presentation/widgets/worktop.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';
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
              WorkTop(title: "Employee ID"),
              WorkTop(title: "Name"),
              WorkTop(title: "Designation"),
              WorkTop(title: "Status")
            ])
          ],
        ),
      ),
      const SizedBox(
        height: 5.0,
      ),
      Expanded(
          child: Container(
        margin: const EdgeInsets.only(
          left: 10.0,
          right: 5.0,
        ),
        /**
                #-----------------------ListView Builder Start From Here-------------------------#
             */
        child: ListView.builder(
          itemCount: employeesalarydata.length,
          itemBuilder: (BuildContext context, int index) {
            EmployeeSalaryData employeeSalary = employeesalarydata[index];
            return Table(
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                width: MediaQuery.of(context).size.width * 2.0,
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
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                Responsive.issmallmobile(context) ? 10 : 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      employeeSalary.name,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
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
                              color: (employeeSalary.status.contains('Pending')
                                  ? Colors.red
                                  : Colors.green),
                              fontWeight: FontWeight.w500),
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
