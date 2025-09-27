import 'dart:io';

void main() {
  print("===== Welcome to Dart Pizza Shop =====");

  // Menu
  Map<String, int> pizzaMenu = {
    "Small": 500,
    "Medium": 800,
    "Large": 1200,
  };

  Map<String, int> toppingsMenu = {
    "Cheese": 100,
    "Mushrooms": 150,
    "Olives": 120,
    "Chicken": 200,
  };

  // Step 1: Select Pizza Size
  print("\nChoose Pizza Size:");
  pizzaMenu.forEach((size, price) {
    print("$size: Rs. $price");
  });

  stdout.write("Enter size (Small/Medium/Large): ");
  String? sizeChoice = stdin.readLineSync();

  if (sizeChoice == null || !pizzaMenu.containsKey(sizeChoice)) {
    print("Invalid choice! Exiting...");
    return;
  }

  int totalBill = pizzaMenu[sizeChoice]!;

  // Step 2: Add Toppings
  print("\nDo you want extra toppings? (yes/no): ");
  String? toppingChoice = stdin.readLineSync();

  List<String> selectedToppings = [];

  if (toppingChoice != null && toppingChoice.toLowerCase() == "yes") {
    print("\nAvailable Toppings:");
    toppingsMenu.forEach((topping, price) {
      print("$topping: Rs. $price");
    });

    while (true) {
      stdout.write("Enter topping name (or type 'done' to finish): ");
      String? topping = stdin.readLineSync();

      if (topping == null || topping.toLowerCase() == "done") break;

      if (toppingsMenu.containsKey(topping)) {
        selectedToppings.add(topping);
        totalBill += toppingsMenu[topping]!;
      } else {
        print("Invalid topping!");
      }
    }
  }

  // Step 3: Order Summary
  print("\n===== Order Summary =====");
  print("Pizza Size: $sizeChoice");
  if (selectedToppings.isNotEmpty) {
    print("Toppings: ${selectedToppings.join(", ")}");
  } else {
    print("No extra toppings");
  }
  print("Total Bill: Rs. $totalBill");

  print("\nThank you for ordering with Dart Pizza Shop!");
}
