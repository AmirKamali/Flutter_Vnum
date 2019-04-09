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