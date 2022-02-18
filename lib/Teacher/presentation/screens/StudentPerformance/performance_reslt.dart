import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/Teacher/presentation/models/resultModel.dart';

class PerformanceResult extends StatefulWidget {
  const PerformanceResult({Key? key}) : super(key: key);

  @override
  _PerformanceResultState createState() => _PerformanceResultState();
}

class _PerformanceResultState extends State<PerformanceResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "PERFORMANCE", onpressed: () => Navigator.pop(context)),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            height: MediaQuery.of(context).size.height * 0.146,
            width: double.infinity,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 40,
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [Text("Name:"), Text("Jash Mehta")],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("Class:"),
                      Text("12th"),
                      Text("Section:"),
                      Text("A")
                    ],
                  ),
                  Row(
                    children: const [Text("StudentId:"), Text("126780")],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "MAX",
                style: TextStyle(
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0),
              ),
              Container(
                height: 30.0,
                width: 50.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 3.0, right: 3.0, top: 10.0),
            child: Table(
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "SI No.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Subject",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w600,
                          fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Marks",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700],
                          fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Scored",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700],
                          fontSize: 19),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 30.0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 5.0, top: 5.0),
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                SubjectList subjectList = list[index];
                return Table(
                  children: [
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          subjectList.sino.toString(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          subjectList.subject,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          subjectList.marks.toString(),
                          style: const TextStyle(color: Colors.black),
                        )),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Container(
                            height: 28.0,
                            width: 50.0,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                            ),
                          ))),
                    ])
                  ],
                );
              },
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 30.0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          const Text("TOTAL"),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 30.0),
            child: Divider(
              color: Colors.black,
              thickness: 1.0,
            ),
          ),
          ListTile(
            leading: Text(
              "Overall %",
              style: TextStyle(color: Colors.grey[700], fontSize: 17.0),
            ),
            title: const Text(
              "80",
              style: TextStyle(color: Colors.grey, fontSize: 17.0),
            ),
          ),
          ListTile(
            leading: Text(
              "Status",
              style: TextStyle(color: Colors.grey[700], fontSize: 17.0),
            ),
            title: const Text(
              "Passed",
              style: TextStyle(color: Colors.green, fontSize: 17.0),
            ),
          ),
          ListTile(
            leading: Text(
              "Class Avg",
              style: TextStyle(color: Colors.grey[700], fontSize: 17.0),
            ),
            title: const Text(
              "12",
              style: TextStyle(color: Colors.grey, fontSize: 17.0),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.post_add, color: Colors.white),
        backgroundColor: Colors.blue[800],
      ),
    );
  }
}
