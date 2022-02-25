import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/material.dart';

class InstitutionListview extends StatefulWidget {
  String title;
  String icon;
  InstitutionListview({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  @override
  _InstitutionListviewState createState() => _InstitutionListviewState();
}

class _InstitutionListviewState extends State<InstitutionListview> {
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
