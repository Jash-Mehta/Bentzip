import 'package:bentzip/Admin/presentation/widgets/detail.dart';
import 'package:bentzip/MainScreen/screens/exportwidget.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "ADMIN", onpressed: () => Navigator.pop(context)),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, right: 15.0),
                child: CircleAvatar(
                  radius: 23.0,
                  backgroundColor: Colors.blue[800],
                  child: Image.asset(
                    "assets/Users.png",
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "ADD STUDENT",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          /**
             #------------------Everything is avaiable in this DetailScreen like-----------#
             {
               onChanged
               onSaved
               Controller
               keyboardtype
             }
             #------------------------Example is Showed Below------------------------#
             */
          DetailScreen(
            hinttext: "Student ID",
            onchange: (value) {
              data = value;
              print(data);
              setState(() {});
            },
          ),
          DetailScreen(hinttext: "First Name"),
          DetailScreen(hinttext: "Middle Name"),
          DetailScreen(hinttext: "Last Name"),
          DetailScreen(hinttext: "Father Name"),
          DetailScreen(hinttext: "Mother Name"),
          DetailScreen(hinttext: "DOB"),
          DetailScreen(hinttext: "gender"),
          DetailScreen(
            hinttext: "Fee",
            keyboardType: TextInputType.phone,
          ),
          DetailScreen(hinttext: "Class"),
          DetailScreen(hinttext: "Address"),
          DetailScreen(hinttext: "Author"),
          DetailScreen(hinttext: "BusRoute"),
        ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.post_add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[800],
      ),
    );
  }
}