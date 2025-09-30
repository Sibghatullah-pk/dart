import 'dart:io';

class Employee {
  String name;
  int hoursWorked;
  double hourlyRate;

  Employee(this.name, this.hoursWorked, this.hourlyRate);

  double calculateOvertimePay() {
    if (hoursWorked > 40) {
      int overtimeHours = hoursWorked - 40;
      return overtimeHours * (hourlyRate * 1.5);
    }
    return 0;
  }
}

void main() {
  while (true) {
    print("\n===== Overtime Payment Menu =====");
    print("1. Enter Employee Details");
    print("2. Exit");
    stdout.write("Choose option: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      stdout.write("Enter Employee Name: ");
      String name = stdin.readLineSync()!;

      stdout.write("Enter Hours Worked: ");
      int hours = int.parse(stdin.readLineSync()!);

      stdout.write("Enter Hourly Rate: ");
      double rate = double.parse(stdin.readLineSync()!);

      Employee emp = Employee(name, hours, rate);
      double overtime = emp.calculateOvertimePay();

      print("\nEmployee: ${emp.name}");
      print("Hours Worked: ${emp.hoursWorked}");
      print("Overtime Pay: \$${overtime.toStringAsFixed(2)}");
    } else if (choice == 2) {
      print("Exiting Program...");
      break;
    } else {
      print("Invalid choice, try again!");
    }
  }
}
