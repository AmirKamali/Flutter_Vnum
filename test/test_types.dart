import 'package:vnum/vnum.dart';

@VnumDefinition
class CarType extends Vnum<String> {
  static final CarType sedan = CarType.define("sedan-value");
  static final CarType suv = CarType.define("suv-value");
  static final CarType truck = CarType.define("truck-value");
  static final CarType none = CarType.define("value-none");

  /// Constructors
  CarType.define(String fromValue) : super.define(fromValue);
  factory CarType(String value) => Vnum.fromValue(value,CarType);

  /// Json
  dynamic toJson() => this.value;
  factory CarType.fromJson(dynamic json) => CarType(json);
}
