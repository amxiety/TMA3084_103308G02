
import 'dart:io';

void main() {
  // Pizza prices in USD
  const double smallPrice = 5.0;
  const double mediumPrice = 7.0;
  const double largePrice = 10.0;

  bool continueOrdering = true;

  print('===== PIZZA ORDER CALCULATOR =====');
  print('Small  : USD \$5.00');
  print('Medium : USD \$7.00');
  print('Large  : USD \$10.00');

  while (continueOrdering) {
    String size = '';
    int quantity = 0;

    // Ask for a valid pizza size
    while (size != 'small' &&
        size != 'medium' &&
        size != 'large') {
      stdout.write(
          '\nEnter pizza size (Small/Medium/Large): ');

      size = stdin.readLineSync()?.trim().toLowerCase() ?? '';

      if (size != 'small' &&
          size != 'medium' &&
          size != 'large') {
        print('Invalid pizza size. Please try again.');
      }
    }

    // Ask for a valid quantity
    while (quantity <= 0) {
      stdout.write('Enter quantity: ');

      String input = stdin.readLineSync()?.trim() ?? '';
      quantity = int.tryParse(input) ?? 0;

      if (quantity <= 0) {
        print('Invalid quantity. Enter a positive whole number.');
      }
    }

    double total = 0.0;

    // Calculate total using switch
    switch (size) {
      case 'small':
        total = smallPrice * quantity;
        break;

      case 'medium':
        total = mediumPrice * quantity;
        break;

      case 'large':
        total = largePrice * quantity;
        break;
    }

    // Display the order details
    print('\n----- ORDER SUMMARY -----');
    print('Pizza size: ${size.toUpperCase()}');
    print('Quantity: $quantity');
    print('Total payment: USD \$${total.toStringAsFixed(2)}');

    // Ask whether to place another order
    String answer = '';

    while (answer != 'yes' && answer != 'no') {
      stdout.write('\nWould you like to order again? (yes/no): ');

      answer = stdin.readLineSync()?.trim().toLowerCase() ?? '';

      if (answer != 'yes' && answer != 'no') {
        print('Please enter yes or no.');
      }
    }

    if (answer == 'no') {
      continueOrdering = false;
    }
  }

  print('\nThank you for ordering!');
}
