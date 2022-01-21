import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String hinttext;
  VoidCallback onpressedAdd;
  VoidCallback onpressedDelete;
  DetailScreen(
      {Key? key,
      required this.hinttext,
      required this.onpressedAdd,
      required this.onpressedDelete})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13.0, right: 13.0, top: 10.0),
          child: SizedBox(
            width: Responsive.issmallmobile(context)
                ? MediaQuery.of(context).size.width * 0.65
                : MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.09,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: widget.hinttext,
                hintStyle:
                    const TextStyle(color: Colors.black54, fontSize: 20.0),
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
              keyboardType: TextInputType.visiblePassword,
            ),
          ),
        ),
        IconButton(
            onPressed: widget.onpressedAdd,
            icon: Icon(
              CupertinoIcons.add_circled_solid,
              color: Colors.blue[400],
              size: 30.0,
            )),
        IconButton(
            onPressed: widget.onpressedDelete,
            icon: Icon(
              CupertinoIcons.delete_solid,
              color: Colors.blue[400],
              size: 30.0,
            ))
      ],
    );
  }
}
