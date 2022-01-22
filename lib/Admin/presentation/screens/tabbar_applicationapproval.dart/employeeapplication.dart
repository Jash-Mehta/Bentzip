import 'package:bentzip/Admin/presentation/widgets/personalinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmployeeApplication extends StatefulWidget {
  const EmployeeApplication({Key? key}) : super(key: key);

  @override
  _EmployeeApplicationState createState() => _EmployeeApplicationState();
}

class _EmployeeApplicationState extends State<EmployeeApplication> {
  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: PageView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              //  borderRadius: BorderRadius.circular(20.0)
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.only(left: 13.0, top: 15.0),
                height: 30.0,
                width: MediaQuery.of(context).size.width * 0.69,
                decoration: BoxDecoration(color: Colors.grey[800]),
                child: const Padding(
                  padding: EdgeInsets.only(top: 6.0, left: 8.0),
                  child: Text(
                    "APPLYING INFORMATION",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
              PersonalInformation(
                name: "Jash Mehta",
                subject: "Flutter",
                teacherId: "T1034S567",
                date: "26-01-21",
                //city: "Mumbai",
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  
                  FloatingActionButton(
                    backgroundColor: Colors.blue[800],
                    heroTag: "btn1",
                    onPressed: () {},
                    child: const Icon(Icons.post_add),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blue[800],
                    heroTag: "btn2",
                    onPressed: () {},
                    child: const Icon(Icons.check_circle),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blue[800],
                    heroTag: "btn3",
                    onPressed: () {},
                    child: const Icon(Icons.cancel),
                  )
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}
