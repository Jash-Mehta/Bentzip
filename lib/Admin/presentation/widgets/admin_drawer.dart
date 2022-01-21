import 'package:bentzip/Admin/presentation/widgets/institutions_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminDrawer extends StatefulWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  _AdminDrawerState createState() => _AdminDrawerState();
}

class _AdminDrawerState extends State<AdminDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            Row(children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.admin_panel_settings)),
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
             Teacher Details.....
             */
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/teachers'),
              child: InstitutionListview(
                  title: "Teacher Details", icon: "assets/blueteacher.png"),
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
                  title: "Student Details", icon: "assets/blueuser.png"),
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
                  title: "Accounts Department", icon: "assets/cashbook.png"),
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
             Examination Schedule.......
             */
            InstitutionListview(
                title: "Examination Schedule", icon: "assets/examschedule.png"),
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
                  title: "Application Approval", icon: "assets/approval.png"),
            ),
            const SizedBox(
              height: 8.0,
            ),
            /**
             Activities.......
            */
            InstitutionListview(
                title: "Activities", icon: "assets/activities.png"),
            const SizedBox(
              height: 8.0,
            ),
            /**
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
            InstitutionListview(title: "Syllabus", icon: "assets/syllabus.png"),
            const SizedBox(
              height: 8.0,
            ),
            /**
             About Us.....
             */
            InstitutionListview(title: "About Us", icon: "assets/About.png"),
            const SizedBox(
              height: 8.0,
            ),
            /**
             Contact Us.....
             */
            InstitutionListview(
                title: "Contact Us", icon: "assets/addphone.png"),
            const SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
