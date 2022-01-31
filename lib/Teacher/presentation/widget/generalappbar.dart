import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bentzip/MainScreen/screens/responsive.dart';

class GeneralAppBar extends StatefulWidget with PreferredSizeWidget {
  String appbartitle;
  VoidCallback onpressed;
  GeneralAppBar({Key? key, required this.appbartitle, required this.onpressed})
      : super(key: key);

  @override
  State<GeneralAppBar> createState() => _GeneralAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _GeneralAppBarState extends State<GeneralAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Text(
        widget.appbartitle,
        style: TextStyle(
          color: Colors.blue[800],
          fontWeight: FontWeight.bold,
          fontSize: Responsive.issmallmobile(context) ? 25 : 22,
        ),
      ),
      leading: Builder(builder: (context) {
        return IconButton(
            onPressed: widget.onpressed,
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.black,
              size: Responsive.issmallmobile(context) ? 35 : 30,
            ));
      }),
      actions: [Image.asset('assets/logo.png')],
    );
  }
}
