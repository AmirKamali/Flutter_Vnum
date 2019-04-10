import 'package:flutter_test/flutter_test.dart';
import 'package:reflectable/reflectable.dart';
import 'test_types.dart';
import 'vnum_test.reflectable.dart';



void main() {
  initializeReflectable();
  test('verify Vnum works!', () {
    final car1 = CarType.sedan;
    final car2 = CarType.truck;
    final car3 = CarType.sedan;
    

    /// Check value read
    expect(car1.value, "sedan-value");

    /// Check Vnum with value
    final car4 = CarType("truck-value");
    expect(car4, CarType.truck);

    /// Check Vnum returns null for invalid values 
    final car5 = CarType("truck-value2");
    expect(car5, null);
    
    /// Check equality
    var sedanIsNotTruck = car1 != car2;
    var sedansAreEqual = car1 == car3;
    expect(sedansAreEqual,true);
    expect(sedanIsNotTruck,true);

  });
}
