import 'package:bentzip/MainScreen/screens/exportwidget.dart';

class WorkTop extends StatefulWidget {
  String title;
   WorkTop({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<WorkTop> createState() => _WorkTopState();
}

class _WorkTopState extends State<WorkTop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
        widget.title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Responsive.issmallmobile(context) ? 10 : 14,
            color: Colors.black),
      ),
    );
  }
}
