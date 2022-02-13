import 'package:bentzip/MainScreen/screens/exportwidget.dart';

class PerformanceResult extends StatefulWidget {
  const PerformanceResult({Key? key}) : super(key: key);

  @override
  _PerformanceResultState createState() => _PerformanceResultState();
}

class _PerformanceResultState extends State<PerformanceResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneralAppBar(
          appbartitle: "PERFORMANCE", onpressed: () => Navigator.pop(context)),
          
    );
  }
}
