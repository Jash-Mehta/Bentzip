import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:bentzip/Teacher/presentation/widget/teacherdrawer.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TeacherDashboard extends StatefulWidget {
  const TeacherDashboard({Key? key}) : super(key: key);

  @override
  _TeacherDashboardState createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "Bentzip",
            style: TextStyle(
              color: Colors.blue[800],
              fontWeight: FontWeight.bold,
              fontSize: Responsive.issmallmobile(context) ? 25 : 22,
            ),
          ),
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.clear_all,
                  color: Colors.black,
                  size: Responsive.issmallmobile(context) ? 35 : 30,
                ));
          }),
          actions: [Image.asset('assets/logo.png')],
        ),
        drawer: Teacherdrawer(),
        body: TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 10, 16),
          calendarBuilders: CalendarBuilders(
          
          ),
          
        ));
  }
}
