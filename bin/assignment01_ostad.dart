abstract class Role {
  void displayRole();
}

class Person implements Role {
  late String name;
  late int age;
  late String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {}

  String get getName => name;

  int get getAge => age;

  String get getAddress => address;
}

class Student extends Person {
  late int studentID;
  late String grade;
  late List<double> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade,
      this.courseScores)
      : super(name, age, address);


  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    double sum = courseScores.reduce((value, element) => value + element);
    return double.parse((sum / courseScores.length).toStringAsFixed(2));
  }
}

class Teacher extends Person {
  late int teacherID;
  late List<String> coursesTaught;

  Teacher(
      String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    coursesTaught.forEach((course) => print("- $course"));
  }
}

void main() {
  var courseScores = [90.0, 85.0, 82.0];
  var studentInfo = Student("Ismail Jabiulla", 26, "Rajshahi Sadar, Rajshahi",
      12345, "Grade 10", courseScores);

  var coursesTaught = ["Math", "English", "Bangla"];
  var TeacherInfo =
  Teacher("Abdulla Al Mamun", 40, "Rajshahi", 98765, coursesTaught);

  print("Student Information:");
  studentInfo.displayRole();
  print("Name: ${studentInfo.getName}");
  print("Age: ${studentInfo.getAge}");
  print("Address: ${studentInfo.getAddress}");
  print("Average Score: ${studentInfo.calculateAverageScore()}");

  print("\nTeacher Information:");
  TeacherInfo.displayRole();
  print("Name: ${TeacherInfo.getName}");
  print("Age: ${TeacherInfo.getAge}");
  print("Address: ${TeacherInfo.getAddress}");
  TeacherInfo.displayCoursesTaught();
}
