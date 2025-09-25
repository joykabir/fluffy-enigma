import 'dart:io';

void main() {
  print('=== Simple Calculator using Dart ===');
  print('This calculator supports addition (+) and subtraction (-) only.\n');

  while (true) {
    try {
      // Get first integer
      stdout.write('Enter the first integer (or "quit" to exit): ');
      String? input1 = stdin.readLineSync();
      
      if (input1?.toLowerCase() == 'quit') {
        print('Bye!');
        break;
      }
      
      int num1 = int.parse(input1 ?? '');

      // Get second integer
      stdout.write('Enter the second integer: ');
      String? input2 = stdin.readLineSync();
      int num2 = int.parse(input2 ?? '');

      // Get operator choice
      stdout.write('Choose arithmatic operation (+) for addition or (-) for subtraction: ');
      String? operator = stdin.readLineSync();

      // Validate operator and perform calculation
      int result;
      String operationName;

      switch (operator?.trim()) {
        case '+':
          result = num1 + num2;
          operationName = 'addition';
          break;
        case '-':
          result = num1 - num2;
          operationName = 'subtraction';
          break;
        default:
          print('Error: Invalid operator! Please use only + or -\n');
          continue;
      }

      // Display result
      print('\n--- Result ---');
      print('Operation: $operationName');
      print('$num1 $operator $num2 = $result\n');
      
    } catch (e) {
      print('Error: Please enter valid integers only!\n');
    }
  }
}