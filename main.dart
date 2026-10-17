
import 'myLib.dart';

void main() {
  // Create an Employee object
  Employee employee = Employee(
    'John',
    5000.0,
    7.0,
    10.0,
  );

  // Calculate overtime pay and total salary
  double overtimePay = employee.calculateOvertimePay();
  double totalSalary = employee.calculateTotalSalary();

  // Display the results
  print('Employee Name: ${employee.name}');
  print('Basic Salary: \$${employee.basicSalary} USD');
  print('Overtime Pay: \$${overtimePay} USD');
  print('Total Salary = \$${totalSalary} USD');
}
