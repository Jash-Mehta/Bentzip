import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:bentzip/MainScreen/screens/generalappbar.dart';

class TeacherInventory extends StatefulWidget {
  const TeacherInventory({Key? key}) : super(key: key);

  @override
  _TeacherInventoryState createState() => _TeacherInventoryState();
}

class _TeacherInventoryState extends State<TeacherInventory> {
  @override
  Widget build(BuildContext context) {
    List field = [];
    return Scaffold(
        appBar: GeneralAppBar(
            appbartitle: "INVENTORY", onpressed: () => Navigator.pop(context)),
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
                    "assets/inventoryflow.png",
                    width: 30.0,
                    color: Colors.white,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Inventory",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: field.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 65.0,
                  margin:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 5.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 15.0),
                    child: TextFormField(
                        // controller: _controller,
                        decoration: const InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Type....",
                            hintStyle:  TextStyle(
                              color: Colors.black54,
                              fontSize: 20.0,
                            ))),
                  ),
                );
              },
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, bottom: 8.0),
              child: FloatingActionButton(
                backgroundColor: Colors.blue[800],
                heroTag: "btn1",
                onPressed: () {
                  field.add(0);
                  setState(() {});
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 33.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, bottom: 8.0),
              child: FloatingActionButton(
                backgroundColor: Colors.blue[800],
                heroTag: "btn2",
                onPressed: () {},
                child: const Icon(
                  Icons.post_add,
                  size: 30.0,
                ),
              ),
            )
          ])
        ])));
  }
}
