import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/Teacher/presentation/models/studentdata.dart';

class TransportationStuList extends StatefulWidget {
  const TransportationStuList({Key? key}) : super(key: key);

  @override
  _TransportationStuListState createState() => _TransportationStuListState();
}

class _TransportationStuListState extends State<TransportationStuList> {
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
          appbartitle: "TRANSPORTATION",
          onpressed: () => Navigator.pop(context)),
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
                  "assets/Transportation.png",
                  width: 30.0,
                  height: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Transportation",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: Responsive.issmallmobile(context) ? 22 : 20,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
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
          height: MediaQuery.of(context).size.height * 0.2,
          width: double.infinity,
        ),
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
          ),
        ),
      ])),
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
