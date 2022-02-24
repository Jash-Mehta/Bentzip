class Teacher_semi {
  String teacherID;
  String name;
  String classAlloted;
  String subject;

  Teacher_semi(this.teacherID, this.name, this.classAlloted, this.subject);

  factory Teacher_semi.fromJson(Map<String, dynamic> json) {
    return Teacher_semi(json["teacherID"], json["fName"] ,
        json["classAlloted"], json["subject"]);
  }
}
