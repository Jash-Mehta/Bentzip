import 'package:flutter/material.dart';

class DanceScreen extends StatefulWidget {
  const DanceScreen({ Key? key }) : super(key: key);

  @override
  _DanceScreenState createState() => _DanceScreenState();
}

class _DanceScreenState extends State<DanceScreen> {
  List field = [];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Expanded(
        child: ListView.builder(
          itemCount: field.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              background: Container(
                color: Colors.red,
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              key: UniqueKey(),
              onDismissed: (value) {
                field.remove(index);
              },
              child: Container(
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
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                  child: TextFormField(
                      decoration: const InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Type....",
                          hintStyle: TextStyle(
                              color: Colors.black54, fontSize: 20.0))),
                ),
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
    ]);
  }
}