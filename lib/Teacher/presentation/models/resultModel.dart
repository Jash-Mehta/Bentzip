import 'package:bentzip/MainScreen/screens/exportwidget.dart';

class SubjectList {
  int sino;
  String subject;
  int marks;
  Widget? child;
  SubjectList({
    required this.sino,
    required this.subject,
    required this.marks,
    this.child,
  });
}

List<SubjectList> list = [
  SubjectList(sino: 1, subject: "Maths", marks: 100),
  SubjectList(sino: 2, subject: "Physics", marks: 100),
  SubjectList(sino: 3, subject: "Chemistry", marks: 100),
  SubjectList(sino: 4, subject: "English", marks: 100),
  SubjectList(sino: 5, subject: "Biology", marks: 100),
  SubjectList(sino: 6, subject: "History", marks: 100),
  SubjectList(sino: 7, subject: "Hindi", marks: 100),
];
