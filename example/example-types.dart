import 'package:vnum/vnum.dart';

@EnumReflectable
class CarType extends VNum<String> {
  static final CarType sedan = CarType.define("sedan-value");
  static final CarType suv = CarType.define("suv-value");
  static final CarType truck = CarType.define("truck-value");
  static final CarType none = CarType.define("value-none");
  CarType.define(String fromValue) : super.define(fromValue);
  factory CarType(String value) => VNum.fromValue(value,CarType);
}

@EnumReflectable
class Fruit extends VNum<int> {
  static final Fruit apple = Fruit.define(1);
  static final Fruit orange = Fruit.define(2);
  static final Fruit banana = Fruit.define(3);
  Fruit.define(int fromValue) : super.define(fromValue);
  factory Fruit(int value) => VNum.fromValue(value,Fruit);

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