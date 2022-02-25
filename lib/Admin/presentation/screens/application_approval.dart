import 'package:bentzip/Admin/presentation/screens/tabbar_applicationapproval.dart/employeeapplication.dart';
import 'package:bentzip/Admin/presentation/screens/tabbar_applicationapproval.dart/studentapplication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ApplicationApproval extends StatefulWidget {
  const ApplicationApproval({Key? key}) : super(key: key);

  @override
  _ApplicationApprovalState createState() => _ApplicationApprovalState();
}

class _ApplicationApprovalState extends State<ApplicationApproval>
    with SingleTickerProviderStateMixin {
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
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "ADMIN",
            style: TextStyle(
                color: Colors.blue[800],
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.black,
                size: 30.0,
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
                    "assets/whiteapproval.png",
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Application Approval",
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
                  text: "Employee Applications",
                ),
                Tab(
                  text: "Student Applications",
                ),
              ]),
          Expanded(
            child: TabBarView(controller: _tabController, children: const [
              EmployeeApplication(),
              StudentApplication()
            ]),
          ),
        ])));
  }
}
