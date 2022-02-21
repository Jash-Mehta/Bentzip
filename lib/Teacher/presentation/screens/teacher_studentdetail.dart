import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:bentzip/MainScreen/screens/generalappbar.dart';
import 'package:bentzip/Teacher/presentation/widget/teachertextfield.dart';

class Teacherstudentdetail extends StatefulWidget {
  const Teacherstudentdetail({Key? key}) : super(key: key);

  @override
  _TeacherstudentdetailState createState() => _TeacherstudentdetailState();
}

class _TeacherstudentdetailState extends State<Teacherstudentdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GeneralAppBar(
            appbartitle: "STUDENTS", onpressed: () => Navigator.pop(context)),
        body: SafeArea(
            child: SingleChildScrollView(
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
                      "assets/Users.png",
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    "STUDENT DETAILS",
                    style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: Responsive.issmallmobile(context) ? 24 : 22,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Teachertextfield(hint: "Name"),
            Teachertextfield(hint: "StudentID"),
            Teachertextfield(hint: "Class"),
            Teachertextfield(hint: "Section"),
            Teachertextfield(hint: "DOB"),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Documents",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
            ),
            /**
             Aadhar Card....
             */
            ListTile(
              leading: const Text(
                "Aadhar Card",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                child: Text("Choose file"),
                onPressed: () {},
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
            /**
             Father's AadharCard....
             */
            ListTile(
              leading: const Text(
                "Father's AadharCard",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                child: Text("Choose file"),
                onPressed: () {},
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
            /**
             Transfer Certificate....
             */
            ListTile(
              leading: const Text(
                "Transfer Certificate",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                child: const Text("Choose file"),
                onPressed: () {},
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
            /**
             MarkSheet....
             */
            ListTile(
              leading: const Text(
                "Marksheet",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                child: const Text("Choose file"),
                onPressed: () {},
              ),
            ),
            const Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
            /**
             Photo....
             */
            ListTile(
              leading: const Text(
                "Photo",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                child: const Text("Choose file"),
                onPressed: () {},
              ),
            ),
          ]),
        )));
  }
}
