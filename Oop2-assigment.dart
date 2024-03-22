class Student {
  String name;
  int age;
  var gradelevel;
  Student(this.name, this.age, this.gradelevel);

  //method which print student info
  void StudentInfo() {
    print('Student infomation');
    print(' name: $name');
    print('age : $age');
    print('gradelevel: $gradelevel');
  }
}

class Teacher {
  String name;
  int age;
  var Subteach;
  Teacher(this.name, this.age, this.Subteach);

  //method which display teacher info
  void TeacherInfo() {
    print('teacher info');
    print('name: $name');
    print('age: $age');
    print('Subject take $Subteach');
  }
}

class School {
  Student? student;
  Teacher? teacher;

  void addstudent(String name, int age, var gradelevel) {
    student = Student(name, age, gradelevel);
  }

  void addteacher(String name, int age, var Subteach) {
    teacher = Teacher(name, age, Subteach);
  }

  void printinfo() {
    if (student != null) {
      student!.StudentInfo();
    }
    if (teacher != null) {
      teacher!.TeacherInfo();
    }
  }
}

void main() {
  var school = School();
  school.addstudent('john', 25, 'grade 7');
  school.addteacher('mrs perfect', 36, 'chemistry');
  school.printinfo();
}
