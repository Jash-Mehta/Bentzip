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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 5.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        height: 63.0,
        
        child: Row(
          children: [
            Image.asset(
              widget.icon,
              width: 40.0,
              height: 40.0,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800]),
            ),
          ],
        ),
      ),
    );
  }
}
