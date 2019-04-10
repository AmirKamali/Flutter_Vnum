import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'example-types.dart';
part 'example.g.dart';

/// This is example use of Vnum in dart, initializeReflectable()
/// add  initializeReflectable() the main() of your application
/// if you are getting a undefined_function error, run
/// flutter packages pub run build_runner build example --delete-conflicting-outputs

/// Usage: Example
void example() {


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

/// Serialization Example
void serializationExample() {
   /// Mock Response
   final jsonString = '{"carType":"suv-value"}';

   /// Decode
   var decodedData = json.decode(jsonString);
   SampleResponse response = SampleResponse.fromJson(decodedData);

   /// Verify
   print(response.carType); /// CarType.suv;

   /// Serialize again
   var serialized = json.encode(response);

   /// Make sure generated string is the same as original
   print(serialized); // {"carType":"suv-value"}
}


@JsonSerializable()
class SampleResponse {
  
  @JsonKey(name: "carType")
  CarType carType;

  SampleResponse();
  factory SampleResponse.fromJson(Map<String, dynamic> json) =>
      _$SampleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SampleResponseToJson(this);
}