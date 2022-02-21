import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:bentzip/MainScreen/screens/generalappbar.dart';

class AdminApply extends StatefulWidget {
  const AdminApply({Key? key}) : super(key: key);

  @override
  _AdminApplyState createState() => _AdminApplyState();
}

class _AdminApplyState extends State<AdminApply> {
  String? _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GeneralAppBar(
            appbartitle: "APPLICATION",
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
                    "assets/About.png",
                    width: 30.0,
                    color: Colors.white,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Apply to Admin",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 23.0),
            child: Text(
              "New Leave Request",
              style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: Responsive.issmallmobile(context) ? 25 : 22,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
          /**
           #--------------- Subject TextFormfield-------------------#
           */
          Container(
            margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Subject",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 22.0),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          /**
           #--------------Dropdown list--------------#
           */
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            margin: const EdgeInsets.only(left: 15.0, right: 15.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0)),
            child: DropdownButton<String>(
              hint: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Reason",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              items: <String>['Personal Reason', 'Sick', 'Holiday', 'Event']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              /**
               #--------------------From Date Picker------------#
               */
              Container(
                width: MediaQuery.of(context).size.width * 0.41,
                margin:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: InkWell(
                    onTap: () {
                      _selectDate();
                    },
                    child: IgnorePointer(
                      child: TextFormField(
                        onSaved: (val) {},
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today_rounded,
                                color: Colors.blue),
                            hintText: "From",
                            hintStyle: TextStyle(
                                color: Colors.black54, fontSize: 22.0),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ),
              ),
              /**
               #---------------To Date Picker------------------#
               */
              Container(
                width: MediaQuery.of(context).size.width * 0.41,
                margin:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: InkWell(
                    onTap: () {
                      _selectDate();
                    },
                    child: IgnorePointer(
                      child: TextFormField(
                        onSaved: (val) {},
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today_rounded,
                                color: Colors.blue),
                            hintText: "To",
                            hintStyle: TextStyle(
                                color: Colors.black54, fontSize: 22.0),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 150.0,
            margin: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Description",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 22.0),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                onPressed: () {
                  print("Submit button is clicked");
                },
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ])));
  }

/*
 *  #---------------- Datepicker class--------------------#
 */
  Future _selectDate() async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2016),
        lastDate: DateTime(2024));
    if (picked != null) setState(() => _value = picked.toString());
  }
}
