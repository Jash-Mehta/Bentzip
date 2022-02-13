import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:bentzip/Teacher/presentation/screens/application/leave_list.dart';
import 'package:bentzip/Teacher/presentation/widget/generalappbar.dart';

class TeacherApprovalDash extends StatelessWidget {
  const TeacherApprovalDash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GeneralAppBar(
            appbartitle: "APPLICATION",
            onpressed: () => Navigator.pop(context)),
        body: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.08,
                right: MediaQuery.of(context).size.width * 0.08,
                top: 20.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LeaveList()));
                },
                child: ListTile(
                  title: const Text(
                    "Apply to Admin",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: Responsive.issmallmobile(context) ? 50 : 45,
                  ),
                )),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.08,
                right: MediaQuery.of(context).size.width * 0.08,
                top: 20.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
                onPressed: () {},
                child: ListTile(
                  title: Text(
                    "Approve Student's \n Application",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: Responsive.issmallmobile(context) ? 50 : 45,
                  ),
                )),
          ),
        ]));
  }
}
