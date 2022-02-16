import 'package:bentzip/Teacher/presentation/widget/teacher_drawer_listview.dart';
import 'package:flutter/material.dart';

class Teacherdrawer extends StatelessWidget {
  const Teacherdrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.18,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)),
      ),
      child: ListView(
        children: [
          Row(children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cancel,
                  color: Colors.blue[800],
                  size: 30.0,
                )),
            Text(
              "Teacher",
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
            Attendance.......
             */
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/teacherattendance');
              },
              child: TeacherDrawerListview(
                  title: "Attendance", icon: "assets/syllabus.png")),
          const SizedBox(
            height: 8.0,
          ),
          /**
             Student Details....... 
             */
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/teacherstudentdetail'),
            child: TeacherDrawerListview(
                title: "Student Details", icon: "assets/blueuser.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),

          /**
            Notice.......
             */
          InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/teachernotice');
              },
              child: TeacherDrawerListview(
                  title: "Notice", icon: "assets/noticeboard.png")),
          const SizedBox(
            height: 8.0,
          ),
          /**
            Result.......
             */
          // InkWell(
          //     onTap: () {
          //       Navigator.pushNamed(context, '');
          //     },
          //     child: TeacherDrawerListview(
          //         title: "Result", icon: "assets/testresults.png")),
          // const SizedBox(
          //   height: 8.0,
          //),

          /**
             Notes.......
             */
          const SizedBox(
            height: 8.0,
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context, '/teachernotes'),
            child:
                TeacherDrawerListview(title: "Notes", icon: "assets/notes.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          /**
             Applications.......
           */
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/teacherapplicationapp');
            },
            child: TeacherDrawerListview(
                title: "Applications", icon: "assets/Form.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          /**
             
             Student Performance.......
             */
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/teacherstudentperformance');
            },
            child: TeacherDrawerListview(
                title: "Student Performance", icon: "assets/result.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),
          /**
             Inventory.......
           */
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/teacherinventory');
            },
            child: TeacherDrawerListview(
                title: "Inventory", icon: "assets/inventoryflow.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),

          /**
             Activities Allotment.......
            */
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '');
            },
            child: TeacherDrawerListview(
                title: "Activities Allotment", icon: "assets/activities.png"),
          ),
          const SizedBox(
            height: 8.0,
          ),

          /**
            Transportation.......
            */
          TeacherDrawerListview(
              title: "Transportation", icon: "assets/Transportation.png"),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
