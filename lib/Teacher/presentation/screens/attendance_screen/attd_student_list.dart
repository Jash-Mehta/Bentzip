import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/Teacher/presentation/models/studentdata.dart';
import 'package:bentzip/Teacher/presentation/widget/generalappbar.dart';

class AttendanceStudentlist extends StatefulWidget {
  const AttendanceStudentlist({Key? key}) : super(key: key);

  @override
  _AttendanceStudentlistState createState() => _AttendanceStudentlistState();
}

class _AttendanceStudentlistState extends State<AttendanceStudentlist> {
  @override
  initState() {
    questionSelected = List<bool>.filled(data.length, false, growable: true);
    super.initState();
  }

  int selectedindex = 0;
  late List<bool> questionSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
        appbartitle: "ATTENDANCE",
        onpressed: () => Navigator.pop(context),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              Studentdata studentdata = data[index];
              return ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                title: Text(studentdata.name),
                trailing: Checkbox(
                  value: questionSelected[index],
                  onChanged: (val) {
                    setState(() {
                      questionSelected[index] = val!;
                    });
                  },
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
