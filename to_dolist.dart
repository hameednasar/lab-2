import 'dart:io';

void main() {
  // List to store tasks
  List<String> tasks = [];

  while (true) {
    // Display menu options
    print('''\n
1. Add a task
2. View tasks
3. Remove a task
4. Exit
Choose an option: ''');

    // Read user input
    String? input = stdin.readLineSync();

    // Handle the user's option
    switch (input) {
      case '1':
        // Add a task
        print('Enter the task:');
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print('Task added.');
        } else {
          print('Task cannot be empty.');
        }
        break;

      case '2':
        // View tasks
        if (tasks.isEmpty) {
          print('No tasks available.');
        } else {
          print('\nTo-do List:');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;

      case '3':
        // Remove a task
        if (tasks.isEmpty) {
          print('No tasks to remove.');
        } else {
          print('Enter the number of the task to remove:');
          String? taskNumber = stdin.readLineSync();
          int? index = int.tryParse(taskNumber ?? '');
          if (index != null && index > 0 && index <= tasks.length) {
            String removedTask = tasks.removeAt(index - 1);
            print('Task "$removedTask" removed.');
          } else {
            print('Invalid task number.');
          }
        }
        break;

      case '4':
        // Exit the program
        print('Exiting...');
        return;

      default:
        // Invalid input
        print('Invalid option. Please choose again.');
    }
  }
}
