import 'dart:ui';

import 'package:bentzip/MainScreen/screens/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String hinttext;
  ValueChanged<String>? onchange;
  TextEditingController? controller;
  FormFieldSetter<String>? onSaved;
  TextInputType? keyboardType;
  TextInputAction ? inputAction;

  DetailScreen({
    Key? key,
    required this.hinttext,
    this.onchange,
    this.controller,
    this.onSaved,
    this.keyboardType,
    this.inputAction,
  }) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0, right: 13.0, top: 10.0),
      child: SizedBox(
        width: Responsive.issmallmobile(context)
            ? MediaQuery.of(context).size.width * 1.0
            : MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 0.09,
        child: TextFormField(
          onChanged: widget.onchange,
          
          controller: widget.controller,
          onSaved: widget.onSaved,
          decoration: InputDecoration(
            
            hintText: widget.hinttext,
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
          keyboardType: widget.keyboardType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}
