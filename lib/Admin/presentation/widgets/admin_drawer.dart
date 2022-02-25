import 'package:flutter/material.dart';

import 'institutions_listview.dart';

class AdminDrawer extends StatefulWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  _AdminDrawerState createState() => _AdminDrawerState();
}

class _AdminDrawerState extends State<AdminDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Row(children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.admin_panel_settings,
                  color: Colors.blue[800],
                  size: 30.0,
                )),
            Text(
              "ADMIN",
              style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800]),
            ),
          ]),
          const SizedBox(
            height: 13.0,
          ),
          /**
           * ! Techer and student screen need to be change.....
              Teacher Details.....
           */
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/teachers'),
            child: InstitutionListview(
                title: "Teacher", icon: "assets/blueteacher.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          /**
              Student Details.......
           */
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/cooridnates'),
            child: InstitutionListview(
                title: "Student", icon: "assets/blueuser.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          /**
              Account Department.......
           */
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/accountdepartment'),
            child: InstitutionListview(
                title: "Accounts", icon: "assets/cashbook.png"),
          ),
          /**
              Inventory.......
           */
          const SizedBox(
            height: 8.0,
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/inventory'),
            child: InstitutionListview(
                title: "Inventory", icon: "assets/inventoryflow.png"),
          ),
          /**
              Notice.......
           */
          const SizedBox(
            height: 8.0,
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/notice'),
            child: InstitutionListview(
                title: "Notice", icon: "assets/noticeboard.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          /**
           * ! left in drawer.....
              Examination Schedule.......
           */
          InstitutionListview(
              title: "Examination", icon: "assets/examschedule.png"),
          const SizedBox(
            height: 8.0,
          ),
          /**
              Application Approval.......
           */
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/applicationapproval');
            },
            child: InstitutionListview(
                title: "Application", icon: "assets/approval.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          /**
              Activities.......
           */
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/activities');
            },
            child: InstitutionListview(
                title: "Activities", icon: "assets/activities.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          /**
           * ! Left in drawer.....
              Transportation.......
           */
          InstitutionListview(
              title: "Transportation", icon: "assets/Transportation.png"),
          const SizedBox(
            height: 8.0,
          ),
          /**
              Syllabus.......
           */
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/syllabus');
              },
              child: InstitutionListview(
                  title: "Syllabus", icon: "assets/syllabus.png")),
          const SizedBox(
            height: 8.0,
          ),
          /**
              About Us.....
           */
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/aboutus');
              },
              child: InstitutionListview(
                  title: "About Us", icon: "assets/About.png")),
          const SizedBox(
            height: 8.0,
          ),
          /**
              Contact Us.....
           */
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/contact');
            },
            child: InstitutionListview(
                title: "Contact Us", icon: "assets/addphone.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
