import 'package:bentzip/MainScreen/screens/exportwidget.dart';

class Addteacher extends StatefulWidget {
  const Addteacher({Key? key}) : super(key: key);

  @override
  _AddteacherState createState() => _AddteacherState();
}

class _AddteacherState extends State<Addteacher> {
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
        ])));
  }
}
