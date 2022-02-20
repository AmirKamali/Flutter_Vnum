import 'package:flutter_test/flutter_test.dart';
import 'package:vnum/vnum.dart';
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

    expect(CarType("truck-value"), CarType.truck);

    expect(() => CarType("truck-value2"), throwsException);
    
    /// Check equality
    var sedanIsNotTruck = car1 != car2;
    var sedansAreEqual = car1 == car3;
    expect(sedansAreEqual,true);
    expect(sedanIsNotTruck,true);
    expect(Vnum.allCasesFor(CarType).length, 4);
  });
}
