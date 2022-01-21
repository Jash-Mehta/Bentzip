import 'package:bentzip/Admin/presentation/model/studentfeedata.dart';
import 'package:bentzip/Admin/presentation/widgets/student_feedetail_row.dart';
import 'package:flutter/material.dart';

class StudentFee extends StatefulWidget {
  const StudentFee({Key? key}) : super(key: key);

  @override
  _StudentFeeState createState() => _StudentFeeState();
}

class _StudentFeeState extends State<StudentFee> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 10.0,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /**
           * ! Responsive is left.....
           */
          Container(
              height: 35.0,
              width: 100.0,
              decoration: BoxDecoration(color: Colors.blue[200]),
              child: const Text("Search by StudentID")),
          Container(
              height: 35.0,
              width: 100.0,
              decoration: BoxDecoration(color: Colors.blue[200]),
              child: const Center(child: Text("Statstics"))),
          Container(
              height: 35.0,
              width: 100.0,
              decoration: BoxDecoration(color: Colors.blue[200]),
              child: const Center(child: Text("Filter")))
        ],
      ),
      const SizedBox(
        height: 15.0,
      ),
      Expanded(
        child: ListView.builder(
          itemCount: feedata.length,
          itemBuilder: (BuildContext context, int index) {
            StudentFeeData studentFeeData = feedata[index];
            return Container(
              margin: const EdgeInsets.all(15.0),
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
              /**
               * ! Responsive is left......
               */
              height: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StudentFeeRow(
                      heading: "Student Name ", tile: studentFeeData.name),
                  StudentFeeRow(
                      heading: "AccountNo",
                      tile: studentFeeData.accountNo.toString()),
                  StudentFeeRow(
                      heading: "StudentId", tile: studentFeeData.studentid),
                  StudentFeeRow(
                      heading: "PaidDate", tile: studentFeeData.paiddate),
                  StudentFeeRow(
                      heading: "Paymentmode", tile: studentFeeData.paymentmode),
                  StudentFeeRow(
                      heading: "AmountPaid", tile: studentFeeData.amountpaid),
                ],
              ),
            );
          },
        ),
      ),
    ]);
  }
}
