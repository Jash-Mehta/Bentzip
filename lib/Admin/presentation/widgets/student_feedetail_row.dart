import 'package:flutter/material.dart';

class StudentFeeRow extends StatefulWidget {
  String heading;
  String tile;
  StudentFeeRow({
    Key? key,
    required this.heading,
    required this.tile,
  }) : super(key: key);

  @override
  _StudentFeeRowState createState() => _StudentFeeRowState();
}

class _StudentFeeRowState extends State<StudentFeeRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Text(
            widget.heading,
            style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            widget.tile,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
