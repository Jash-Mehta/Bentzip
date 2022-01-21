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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 13.0, top: 15.0),
                  height: 30.0,
                  width: MediaQuery.of(context).size.width * 0.69,
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 6.0, left: 8.0),
                    child: Text(
                      "PERSONAL INFORMATION",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                PersonalInformation(
                  name: "Jash Mehta",
                  dob: "23/04/2001",
                  address: "Parul University",
                  phoneno: "9056747394",
                  positionApplying: "HOD",
                  //city: "Mumbai",
                ),
                Container(
                  margin: const EdgeInsets.only(left: 13.0, top: 15.0),
                  height: 30.0,
                  width: MediaQuery.of(context).size.width * 0.69,
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 6.0, left: 8.0),
                    child: Text(
                      "EDUCATION",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("Degree: "),
                    Text("University Name: "),
                    Text("Year"),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 13.0, top: 15.0),
                  height: 30.0,
                  width: MediaQuery.of(context).size.width * 0.69,
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 6.0, left: 8.0),
                    child: Text(
                      "WORK EXPERIENCES",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                const Center(child: Text("Here data will show from the api")),
                Container(
                  margin: const EdgeInsets.only(left: 13.0, top: 15.0),
                  height: 30.0,
                  width: MediaQuery.of(context).size.width * 0.69,
                  decoration: BoxDecoration(color: Colors.grey[800]),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 6.0, left: 8.0),
                    child: Text(
                      "SKILLS",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                const Center(child: Text("Here data will show from api")),
                const SizedBox(
                  height: 20.0,
                ),
                const Text("Signature"),
                const SizedBox(
                  width: 80.0,
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [Icon(Icons.post_add), Icon(Icons.arrow_right_alt)],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
