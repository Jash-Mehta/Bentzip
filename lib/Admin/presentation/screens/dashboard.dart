import 'package:bentzip/Admin/presentation/widgets/admin_drawer.dart';
import 'package:bentzip/Admin/presentation/widgets/dashboard_container.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Bentzip",
          style: TextStyle(
            color: Colors.blue[800],
            fontWeight: FontWeight.bold,
            fontSize: Responsive.issmallmobile(context) ? 25 : 22,
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(
                Icons.clear_all,
                color: Colors.black,
                size: Responsive.issmallmobile(context) ? 35 : 30,
              ));
        }),
        actions: [Image.asset('assets/logo.png')],
      ),
      drawer: const AdminDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  "assets/testaccount.png",
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sarah Watson",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "ADMIN",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: Responsive.issmallmobile(context) ? 18 : 16,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "My qualification",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: Responsive.issmallmobile(context) ? 18 : 16,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                child: SizedBox(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(primary: Colors.blue[800]),
                      child: Row(children: const [
                        Text(
                          "EDIT",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Icon(Icons.edit),
                      ])),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0),
            child: Text(
              "Most Used",
              style: TextStyle(
                  fontSize: Responsive.issmallmobile(context) ? 24 : 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[800]),
            ),
          ),
          Expanded(
              child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: Responsive.issmallmobile(context) ? 20 : 30,
            mainAxisSpacing: Responsive.issmallmobile(context) ? 20 : 20,
            crossAxisCount: 2,
            children: <Widget>[
              /**
                      Teacher Screen......
                   */

              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/teachers');
                },
                child: DashBoardContainer(
                    imageurl: "assets/teacher.png", title: "Teacher"),
              ),
              /**
                      Student Screen......
                   */
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cooridnates');
                },
                child: DashBoardContainer(
                    imageurl: "assets/Users.png", title: "Student"),
              ),
              /**
                      Account Screen.......
                   */
              InkWell(
                onTap: () => Navigator.pushNamed(context, '/accountdepartment'),
                child: DashBoardContainer(
                    imageurl: "assets/whitecashbook.png", title: "Accounts"),
              ),

              /**
                      Application Screen.......
                   */
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/applicationapproval');
                },
                child: DashBoardContainer(
                    imageurl: "assets/application.png", title: "Application"),
              )
            ],
          )),
        ],
      ),
    );
  }
}
