import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/Teacher/presentation/models/studentdata.dart';
import 'package:bentzip/Teacher/presentation/screens/StudentPerformance/performance_reslt.dart';

class PerformanceStudList extends StatefulWidget {
  const PerformanceStudList({Key? key}) : super(key: key);

  @override
  _PerformanceStudListState createState() => _PerformanceStudListState();
}

class _PerformanceStudListState extends State<PerformanceStudList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "PERFORMANCE", onpressed: () => Navigator.pop(context)),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18.0, top: 10.0),
            child: Text(
              "Profile",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              Studentdata list = data[index];
              /**
               #--------------------------- Performance Result Screen Start From here------------------#
               */
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => PerformanceResult()));
                },
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(list.name),
                ),
              );
            },
          ))
        ],
      )),
    );
  }
}
