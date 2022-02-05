import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/Teacher/presentation/widget/generalappbar.dart';

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
          appbartitle: "STUDENT DETAIL",
          onpressed: () => Navigator.pop(context)),
    );
  }
}
