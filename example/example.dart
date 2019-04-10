import 'example-types.dart';

/// This is example use of vnum in dart, initializeReflectable()
/// add  initializeReflectable() the main() of your application
/// if you are getting a undefined_function error, run
/// flutter packages pub run build_runner build example --delete-conflicting-outputs

void example() {

  /// Usage:
  var scanType = CarType.sedan;
  var scanType2 = CarType.suv;
  var scanType3 = CarType.sedan;

  print(scanType.value); /// prints sedan-value
  print(scanType == scanType2); /// prints false
  print(scanType == scanType3); /// prints true

  var scanTypeFetched = CarType("sedan-value");
  print(scanTypeFetched.value); /// prints sedan-value
  print(scanTypeFetched == CarType.sedan); /// prints true

  var fruit = Fruit(3);
  print("banana has ${fruit.color()} color"); /// prints banana has Yellow color

  var unknownFruit = Fruit(99);
  print(unknownFruit == null); /// prints true
}
