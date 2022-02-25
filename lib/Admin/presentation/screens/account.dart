import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'tabbar_AccDepart/feedetails_student.dart';
import 'tabbar_AccDepart/salarydetail_employee.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(
      length: 2,
      initialIndex: 0,
      vsync: this,
    );
    super.initState();
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
                    "assets/whitecashbook.png",
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Account Department",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 24.0,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2.0,
              indicatorColor: Colors.blue[800],
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(
                  text: "Students Fee",
                ),
                Tab(
                  text: "Employee Salary",
                ),
              ]),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: const [StudentFee(), EmployeeSalary()]),
          ),
        ])));
  }
}
