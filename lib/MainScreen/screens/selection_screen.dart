import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/material.dart';

class Selection_screen extends StatelessWidget {
  const Selection_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Responsive.isMobile(context)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80.0, top: 40.0),
                        child: Image.asset(
                          "assets/logo.png",
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Expanded(
                        child: GridView.count(
                          primary: false,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing:
                              Responsive.issmallmobile(context) ? 20 : 40,
                          mainAxisSpacing:
                              Responsive.issmallmobile(context) ? 20 : 30,
                          crossAxisCount: 2,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Center(
                                  child: Text(
                                "I am",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            /**
                  Admin Screen......
                   */
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/admin");
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue[800],
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: const Center(
                                    child: Text(
                                  'Admin',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                            /**
                  Teacher Screen......
                   */
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Center(
                                  child: Text(
                                'Teacher',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                            /**
                  Student/Parents Screen.......
                   */
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: const Center(
                                  child: Text(
                                'Student',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Text("This decieve app is not working ")));
  }
}
