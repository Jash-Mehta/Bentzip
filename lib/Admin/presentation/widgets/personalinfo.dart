import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  String name;
  String subject;
  String teacherId;
  String date;
  PersonalInformation({
    Key? key,
    required this.name,
    required this.subject,
    required this.teacherId,
    required this.date,
  }) : super(key: key);

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0),
          child: Text(
            'Name: ${widget.name}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0),
          child: Text(
            'Subject: ${widget.subject}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0),
          child: Text(
            'Teacher Id: ${widget.teacherId}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 15.0),
          child: Text(
            'Date: ${widget.date}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
