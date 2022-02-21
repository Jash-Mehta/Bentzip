import 'package:bentzip/Admin/presentation/widgets/detail.dart';
import 'package:bentzip/MainScreen/screens/exportwidget.dart';

class Addteacher extends StatefulWidget {
  const Addteacher({Key? key}) : super(key: key);

  @override
  _AddteacherState createState() => _AddteacherState();
}

class _AddteacherState extends State<Addteacher> {
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
                    "assets/teacher.png",
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  " ADD TEACHERS",
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
            hinttext: "TeacherID",
            onchange: (value) {
              data = value;
              print(data);
              setState(() {});
            },
          ),
          DetailScreen(hinttext: "Full Name"),
          DetailScreen(hinttext: "Gaurdain Name"),
          DetailScreen(hinttext: "Mother Name"),
          DetailScreen(hinttext: "DOB"),
          DetailScreen(hinttext: "Gender"),
          DetailScreen(hinttext: "Subject"),
          DetailScreen(hinttext: "Address"),
          DetailScreen(
            hinttext: "Salary",
            keyboardType: TextInputType.phone,
          ),
          DetailScreen(hinttext: "Class Alot"),
        ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.post_add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[800],
      ),
    );
  }
}
