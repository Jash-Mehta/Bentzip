class Student {
  String studentID= "";
  String fName= "";
  String mName= "";
  String lName= "";
  String fatherName= "";
  String motherName= "";
  String DOB= "";
  String gender= "";
  String fee= "";
  String sClass= "";
  String address= "";
  String author= "";
  String busRoute= "";


  Student();


  Student.json(
      this.studentID,
      this.fName,
      this.mName,
      this.lName,
      this.fatherName,
      this.motherName,
      this.DOB,
      this.gender,
      this.fee,
      this.sClass,
      this.address,
      this.author,
      this.busRoute);

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student.json(
        json["studentID"],
        json["fName"],
        json["mName"],
        json["lName"],
        json["fatherName"],
        json["motherName"],
        json["DOB"],
        json["gender"],
        json["fee"],
        json["class"],
        json["address"],
        json["author"],
        json["busRoute"]);
  }

  static Map<String, dynamic> toJson(Student value) => {
        "studentID": value.studentID,
        "fName": value.fName,
        "mName": value.mName,
        "lName": value.lName,
        "fatherName": value.fatherName,
        "motherName": value.motherName,
        "DOB": value.DOB,
        "gender": value.gender,
        "fee": value.fee,
        "class": value.sClass,
        "address": value.address,
        "author": value.author,
        "busRoute": value.busRoute
      };
}
