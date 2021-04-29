# Vnum

Vnum or Value based Enum is a [Flutter pub library](https://pub.dev/packages/vnum) that enables enum behaviour in your code using classes in flutter with more fun!.

Some highlighted features:

* Easy define and use your cases
* Memory Efficient
* Supports Serialization / Deserialization
* Support for functions inside your Vnums



## Usage:


```dart
@VnumDefinition
class CarType extends Vnum<String> {
  /// Cases
  static const CarType sedan = const CarType.define("sedan-value");
  static const CarType suv = const CarType.define("suv-value");
  static const CarType truck = const CarType.define("truck-value");
  static const CarType none = const CarType.define("unknown");

  /// Constructors
  const CarType.define(String fromValue) : super.define(fromValue);
  factory CarType(String value) => Vnum.fromValue(value,CarType);

  /// (optional) Add these constructors if serilization is supported
  dynamic toJson() => this.value;
  factory CarType.fromJson(dynamic json) => CarType(json);

  /// Extend your Vnums
  String color(){
    if (value == CarType.sedan.value) {
      return "Green";
    }else if (value == CarType.suv.value) {
      return "Orange";
    }else if (value == CarType.truck.value) {
      return "Yellow";
    }
    return "Unknown";
  }
}
```


```dart
var car = CarType.sedan;
var carValue = car.value;
var carFromValue = CarType('suv-value');
var nonExisting = CarType('rocket') /// returns null

/// Vnum functions
var color = car.color() /// returns "Green"

/// Iterating cases
var allCases = Vnum.allCasesFor(CarType);
print(allCases.length); /// prints 4
```

### Comparison:
```dart
var sedan = CarType.sedan;
var truck = CarType.truck
print(sedan == truck);
```
### Class member usage:
```dart
@JsonSerializable()
class SampleResponse {
  
  @JsonKey(name: "carType")
  CarType carType;

  SampleResponse();
  factory SampleResponse.fromJson(Map<String, dynamic> json) =>
      _$SampleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SampleResponseToJson(this);
}
```
### Deserializiation:
```dart
final jsonString = '{"carType":"suv-value"}';

/// Deserialize Json String
var decodedData = json.decode(jsonString);
SampleResponse response = SampleResponse.fromJson(decodedData);

print(response.carType); /// CarType.suv;
```

### Serialization:
```dart
var serialized = json.encode(response);
print(serialized); /// prints {"carType":"suv-value"}
```


#
## Installation:
Add following dependencies in your pubspec.yaml file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  reflectable: any
  json_annotation: any

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: any
  json_serializable: any
  ```

Add a file ```build.yaml``` to your project's root folder or update the extisting file with the following code to your build.

```yaml
targets:
  $default:
    builders:
      reflectable:
        generate_for:
          - lib/main.dart
          - test/**_test.dart
        options:
          formatted: true
```

Add following lines to your main.dart add the following imports:

```dart
import 'main.reflectable.dart';
import 'package:reflectable/reflectable.dart';

void main() {
  initializeReflectable();
}
```
if you run ```flutter packages pub run build_runner build```, you should have no build problems by now and your project is ready for using Vnum!



## Definition:

Define your Vnum with value of T type with following steps:

* Import Vnum reference ```package:Vnum/Vnum.dart```

* Define your class which extends ```Vnum<T>```

* Add ```@VnumDefinition``` attribute to your class

* Add public constructors

* Define your cases as ```static const``` with the same type of your Vnum

* If you need serialization support for your Vnum add ```toJson()``` and ```fromJson()``` constructor to your Vnum definition

```dart
import 'package:Vnum/Vnum.dart';

@VnumDefinition
class MyEnum extends Vnum<T> {
/// Case Definition
static const MyEnum case1 = const MyEnum.define(value1);
static const MyEnum case2 = const MyEnum.define(value2);

/// Used for defining cases
MyEnum.define(String fromValue) : super.define(fromValue);

/// Used for loading enum using value
factory MyEnum(String value) => Vnum.fromValue(value,MyEnum);

/// (optional) Support for serialization/deserialization
dynamic toJson() => this.value;
factory MyEnum.fromJson(dynamic json) => MyEnum(json);
}
```

## Generate codes:

Vnum is based on Dart Reflection and requires generating codes:

Use the following command in your terminal to generate reflection codes for your project

```flutter packages pub run build_runner build --delete-conflicting-outputs```

Reflectable documentation: https://github.com/dart-lang/reflectable

Json Serialization documentation: https://pub.dev/packages/json_serializable

