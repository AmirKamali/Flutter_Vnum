import 'package:vnum/vnum.dart';

@VnumDefinition
class CarType extends Vnum<String> {
  static const CarType sedan = const CarType.define("sedan-value");
  static const CarType suv = const CarType.define("suv-value");
  static const CarType truck = const CarType.define("truck-value");
  static const CarType none = const CarType.define("value-none");

  /// Constructors
  const CarType.define(String fromValue) : super.define(fromValue);
  factory CarType(String value) => Vnum.fromValue(value,CarType) as CarType;

  /// Support for Json Serialization
  dynamic toJson() => this.value;
  factory CarType.fromJson(dynamic json) => CarType(json);
}

@VnumDefinition
class Fruit extends Vnum<int> {
  static const Fruit apple = const Fruit.define(1);
  static const Fruit orange = const Fruit.define(2);
  static const Fruit banana = const Fruit.define(3);
  
  const Fruit.define(int fromValue) : super.define(fromValue);
  factory Fruit(int value) => Vnum.fromValue(value,Fruit) as Fruit;

  String color(){
    if (value == Fruit.apple.value) {
      return "Green";
    }else if (value == Fruit.orange.value) {
      return "Orange";
    }else if (value == Fruit.banana.value) {
      return "Yellow";
    }
    return "Unknown";
  }
}