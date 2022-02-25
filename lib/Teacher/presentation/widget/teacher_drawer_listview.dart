import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/material.dart';

class TeacherDrawerListview extends StatefulWidget {
  String title;
  String icon;
  TeacherDrawerListview({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  @override
  _TeacherDrawerListviewState createState() => _TeacherDrawerListviewState();
}

class _TeacherDrawerListviewState extends State<TeacherDrawerListview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ListTile(
          leading: Image.asset(
            widget.icon,
            width: 40.0,
            height: 40.0,
          ),
          title: Text(
            widget.title,
            style: TextStyle(
                fontSize: Responsive.issmallmobile(context) ? 22 : 19,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800]),
          ),
        ),
      ),
    );
  }
}
