import 'package:bentzip/Admin/presentation/model/studentfeedata.dart';
import 'package:bentzip/Admin/presentation/screens/addteacher.dart';
import 'package:bentzip/MainScreen/screens/exportwidget.dart';
class TeacherScreen extends StatefulWidget {
  const TeacherScreen({Key? key}) : super(key: key);

  @override
  _TeacherScreenState createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "ADMIN", onpressed: () => Navigator.pop(context)),
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
                  "assets/teacher.png",
                  width: 30.0,
                  height: 30.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "ABOUT TEACHERS",
                style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        const SizedBox(height: 15.0),
        Container(
          margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
              borderRadius: BorderRadius.circular(25.0)),
          child: TextFormField(
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "  Employee ID",
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none),
            keyboardType: TextInputType.text,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 3.0, right: 5.0, top: 10.0),
          child: Table(
            children: const [
              TableRow(children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Employee ID",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Class alot",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Subject",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
              ])
            ],
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 5.0, top: 5.0),
          child: ListView.builder(
            itemCount: feedata.length,
            itemBuilder: (BuildContext context, int index) {
              StudentFeeData studentSalary = feedata[index];
              return Table(
                children: [
                  TableRow(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          border:
                              Border.symmetric(horizontal: BorderSide.none)),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const AlertDialog();
                                },
                              );
                            },
                            child: Text(
                              studentSalary.studentid,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            studentSalary.name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            studentSalary.division,
                            style: const TextStyle(color: Colors.black),
                          )),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                studentSalary.status,
                                style: TextStyle(
                                    color: (studentSalary.status
                                            .contains('Pending')
                                        ? Colors.red
                                        : Colors.green),
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ])
                ],
              );
            },
          ),
        )),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => Addteacher()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[800],
      ),
    );
  }
}
