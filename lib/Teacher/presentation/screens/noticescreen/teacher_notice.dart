import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:bentzip/MainScreen/screens/generalappbar.dart';
import 'package:flutter/material.dart';

import 'notice_divscreen.dart';

class TeacherNotice extends StatefulWidget {
  const TeacherNotice({Key? key}) : super(key: key);

  @override
  _TeacherNoticeState createState() => _TeacherNoticeState();
}

class _TeacherNoticeState extends State<TeacherNotice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "NOTICE",
          onpressed: () {
            print("onclick");
            Navigator.pop(context);
          }),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Class",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 22.0),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0)),
            child: DropdownButton<String>(
              hint: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Section",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          /**
           Navigator start from here........
           Teacher NoticeScreen.........
           And Noticescreen navigator is not 
           */
          SizedBox(
            height: 45.0,
            width: Responsive.issmallmobile(context)
                ? MediaQuery.of(context).size.width * 0.70
                : MediaQuery.of(context).size.width * 0.65,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => NoticeDivScreen()));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                )),
          )
        ],
      ),
    );
  }
}
