import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  _NoticeScreenState createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  List field = [];
  Color _iconColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "ADMIN",
            style: TextStyle(
                color: Colors.blue[800],
                fontWeight: FontWeight.bold,
                fontSize: 25.0),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.black,
                size: 30.0,
              )),
          actions: [Image.asset('assets/logo.png')],
        ),
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
                    "assets/whitenoticeboard.png",
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Notice",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 24.0,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20.0,
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
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (_iconColor == Colors.grey) {
                                      _iconColor = Colors.yellow;
                                    } else {
                                      _iconColor = Colors.grey;
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.star,
                                  color: _iconColor,
                                  size: 35.0,
                                )),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Type....",
                            hintStyle: const TextStyle(
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
