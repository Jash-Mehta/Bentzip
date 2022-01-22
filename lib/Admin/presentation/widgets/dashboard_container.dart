import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/material.dart';

class DashBoardContainer extends StatefulWidget {
  @override
  State<DashBoardContainer> createState() => _DashBoardContainerState();
  String imageurl;
  String title;
  DashBoardContainer({
    Key? key,
    required this.imageurl,
    required this.title,
  }) : super(key: key);
}

class _DashBoardContainerState extends State<DashBoardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.blue[800], borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.imageurl,
              color: Colors.white,
            ),
            SizedBox(height: 20.0),
            Text(
              widget.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsive.issmallmobile(context) ? 23 : 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
