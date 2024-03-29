import 'package:bentzip/Admin/presentation/screens/tabbar_activities/annualday.dart';
import 'package:bentzip/Admin/presentation/screens/tabbar_activities/dance.dart';
import 'package:bentzip/Admin/presentation/screens/tabbar_activities/sport.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 3,
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
                    "assets/activities.png",
                    width: 30.0,
                    height: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Activities",
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
            height: 20.0,
          ),
          TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 4.0,
              indicatorColor: Colors.blue[800],
              controller: _tabController,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Sports",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  "Dance",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Annual Day",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ]),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: TabBarView(controller: _tabController, children: const [
                SportScreen(),
                DanceScreen(),
                AnnualDayScreen()
              ]),
            ),
          ),
        ])));
  }
}
