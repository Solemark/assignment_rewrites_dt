import 'dart:io';
import 'mark.dart';

class MarkCLI {
  final int maxStudents = 10;
  final String instructions = """
1 to add new student
2 to search existing student
3 to display all students
Enter any other key to quit
""";
  List<Mark> markArray = [];

  MarkCLI() {
    print("University Mark Management System");
    while (true) {
      print("${this.linebreak}$instructions");
      int? input = int.tryParse(stdin.readLineSync() ?? "0");
      switch (input) {
        case 1:
          (this.markArray.length < this.maxStudents) ? print(newStudent()) : print("${this.linebreak}MAX STUDENTS!");
          break;
        case 2:
          print(searchStudent());
          break;
        case 3:
          print(displayStudents());
          break;
        default:
          exit(0);
      }
    }
  }

  /// create a new student [Mark]
  String newStudent() {
    this.markArray.add(new Mark(this.getName(), this.getMark()));
    return "${this.linebreak}NEW STUDENT:\n${this.markArray.last}";
  }

  String getName() {
    String? name = null;
    while (name == null) {
      print("Enter student name:");
      name = stdin.readLineSync() ?? "";
    }
    return name;
  }

  int getMark() {
    int? mark = null;
    while (mark == null) {
      print("Enter student mark (0-100):");
      mark = int.tryParse(stdin.readLineSync() ?? "0");
    }
    return mark;
  }

  /// search for an existing student [Mark]
  String searchStudent() {
    print("Enter name of student to search");
    String search = stdin.readLineSync() ?? "";
    Mark? item = this.markArray.where((item) => item.name.toLowerCase() == search.toLowerCase()).firstOrNull;
    String output = item != null ? "${this.linebreak}FIND STUDENT:\n$item" : "${this.linebreak}STUDENT NOT FOUND!";
    return output;
  }

  /// display all current students [Mark]'s
  String displayStudents() {
    String output = "${this.linebreak}DISPLAY ALL STUDENTS:";
    int total = 0;
    for (Mark item in this.markArray) {
      output += "\n$item";
      total += item.mark;
    }
    return "$output\nAverage mark is ${total / this.markArray.length}";
  }

  String get linebreak => "--------------------\n";
}
