import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/Teacher/presentation/screens/transportation/transportation_stulist.dart';

class DashTransportation extends StatefulWidget {
  DashTransportation({Key? key}) : super(key: key);

  @override
  State<DashTransportation> createState() => _DashTransportationState();
}

class _DashTransportationState extends State<DashTransportation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "TRANSPORTATION",
          onpressed: () => Navigator.pop(context)),
      body: Column(
        children: [
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
                    hintText: "Enter Route No",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 22.0),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
                keyboardType: TextInputType.text,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          /**
           Navigator start from here........
           Teacher Transportation.........
           And Transportation navigator is not 
           */
          SizedBox(
            height: 45.0,
            width: Responsive.issmallmobile(context)
                ? MediaQuery.of(context).size.width * 0.70
                : MediaQuery.of(context).size.width * 0.65,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const TransportationStuList()));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                )),
          )
        ],
      ),
    );
  }
}
