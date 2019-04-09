# Vnum

A library that enables value based enum behaviour using classes in flutter



## Usage:


```dart
@EnumReflectable
class CarType extends VNum<String> {
  // Cases
  static final CarType sedan = CarType.define("sedan-value");
  static final CarType suv = CarType.define("suv-value");
  static final CarType truck = CarType.define("truck-value");
  static final CarType none = CarType.define("value-none");

  // Constructors
  CarType.define(String fromValue) : super.define(fromValue);
  factory CarType(String value) => VNum.fromValue(value,CarType);
}
```


```dart
var car = CarType.sedan;
var carValue = car.value;
var carFromValue = CarType('suv-value');
```

Comparison:
```dart
var sedan = CarType.sedan;
var truck = CarType.truck
print(sedan == truck);
```



#
## Installation:
Add following reflectable, build_runner dependencies:

```yaml
dependencies:
  flutter:
    sdk: flutter
  reflectable: ^2.0.10+1

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^1.0.0
  ```

Add following lines to your main.dart add the following imports:

```dart
import 'main.reflectable.dart';
import 'package:reflectable/reflectable.dart';

void main() {
  initializeReflectable();
}
```

In your Vnum files:
```dart
import 'package:vnum/vnum.dart';
```


## Definition:

Define your enum with value of T type with following steps:

* Define your class which extends ```VNum<T>```

* Add ```@EnumReflectable``` attribute to your class

* Add public constructors

* Define your cases as ```static final``` with the same type of your vnum

```dart
@EnumReflectable
class MyEnum extends VNum<T> {
// Case Definition
static final MyEnum case1 = MyEnum.define(value1);
static final MyEnum case2 = MyEnum.define(value2);

// Used for defining cases
  CarType.define(String fromValue) : super.define(fromValue);

// Used for loading enum using value
  factory CarType(String value) => VNum.fromValue(value,CarType);
}
```

## Generate codes:

Vnum is based on Dart Reflection and requires generating codes:

Use the following command in your terminal to generate reflection codes for your project

```packages pub run build_runner build --delete-conflicting-outputs```

Reflectable documentation: https://github.com/dart-lang/reflectable


### For implementation:

* Json Serialization