import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:bentzip/Teacher/presentation/screens/application/adminapply.dart';
import 'package:bentzip/Teacher/presentation/widget/generalappbar.dart';
import 'package:flutter/material.dart';

class LeaveList extends StatefulWidget {
  const LeaveList({Key? key}) : super(key: key);

  @override
  _LeaveListState createState() => _LeaveListState();
}

class _LeaveListState extends State<LeaveList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "APPLICATION", onpressed: () => Navigator.pop(context)),
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 15.0, right: 15.0),
              child: CircleAvatar(
                radius: 23.0,
                backgroundColor: Colors.blue[800],
                child: Image.asset(
                  "assets/About.png",
                  width: 30.0,
                  color: Colors.white,
                  height: 30.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Apply to Admin",
                style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 25.0),
          child: Text(
            "My Applications",
            style: TextStyle(
                color: Colors.blue[800],
                fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                letterSpacing: 0.5,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 23,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                margin: const EdgeInsets.all(10.0),
                height: 130.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                    title: const Padding(
                      padding:
                          EdgeInsets.only(top: 18.0, left: 10.0, right: 10.0),
                      child: Text(
                        "Personal Reson",
                        style: TextStyle(color: Colors.black54, fontSize: 18.0),
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              top: 5.0, left: 10.0, right: 10.0),
                          child: Text(
                            "7th Feb,2020",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        /**
                         * !-----------------Need to change from elevatedButton to Container----------
                         */
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                primary: Colors.green[700]),
                            onPressed: () {},
                            child: Text("Approved"))
                      ],
                    )));
          },
        ))
      ])),
      /**
       #------------------ Adminapply Screen navigate from here----------------#
       */
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[800],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => AdminApply()));
        },
      ),
    );
  }
}
