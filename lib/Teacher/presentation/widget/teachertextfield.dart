import 'package:bentzip/MainScreen/screens/exportwidget.dart';
import 'package:bentzip/MainScreen/screens/responsive.dart';

class Teachertextfield extends StatefulWidget {
  String hint;
   Teachertextfield({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  _TeachertextfieldState createState() => _TeachertextfieldState();
}

class _TeachertextfieldState extends State<Teachertextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0, right: 13.0, top: 20.0),
      child: SizedBox(
        width: Responsive.issmallmobile(context)
            ? MediaQuery.of(context).size.width * 0.90
            : MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.height * 0.07,
        child: TextFormField(
          decoration:  InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(color: Colors.black54, fontSize: 20.0),
            filled: true,
            fillColor: const Color(0xFFE0E0E0),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
                width: 2.0,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
                width: 2.0,
              ),
            ),
          ),
          keyboardType: TextInputType.name,
        ),
      ),
    );
  }
}
