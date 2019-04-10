import 'package:flutter_test/flutter_test.dart';
import 'package:vnum/vnum.dart';
import 'sample_response.dart';
import 'test_types.dart';
import 'vnum_test.reflectable.dart';
import 'dart:convert';



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
    expect(Vnum.allCasesFor(CarType).length, 4);

  });


 test('Vnum deserialization ints', () {

   /// Mock Response
   final jsonString = '{"carType":"suv-value"}';

   /// Decode
   var decodedData = json.decode(jsonString);
   SampleResponse response = SampleResponse.fromJson(decodedData);

   /// Verify
   expect(response.carType, CarType.suv);

   /// Serialize again
   var serialized = json.encode(response);

   /// Make sure generated string is the same as original
   expect(jsonString, serialized);
 });
}
