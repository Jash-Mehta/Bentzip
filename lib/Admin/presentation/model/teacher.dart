class Teacher {
  String teacherID = "";
  String fName = "";
  String mName = "";
  String lName = "";
  String gurdianName = "";
  String motherName = "";
  String DOB = "";
  String gender = "";
  String subject = "";
  String address = "";
  String salary = "";
  String classAlloted = "";

  static Map<String, dynamic> toJson(Teacher value) => {
        'teacherID': value.teacherID, 
        'fName': value.fName,
        'mName': value.mName,
        'lName': value.lName,
        'gurdianName': value.gurdianName,
        'motherName': value.motherName,
        'DOB': value.DOB,
        'gender': value.gender,
        'subject': value.subject,
        'address': value.address,
        'salary': value.salary,
        'classAlloted': value.classAlloted,
      };
}
