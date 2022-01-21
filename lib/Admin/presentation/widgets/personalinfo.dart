import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  String name;
  String dob;
  String positionApplying;
  String address;
  String phoneno;
  PersonalInformation({
    Key? key,
    required this.name,
    required this.dob,
    required this.positionApplying,
    required this.address,
    required this.phoneno,
  }) : super(key: key);

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Text(
            'Name: ${widget.name}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'DOB: ${widget.dob}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Position Applying: ${widget.positionApplying}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Address: ${widget.address}',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'PhoneNo:${widget.phoneno} ',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
