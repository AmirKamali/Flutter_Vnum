library vnum;

import 'package:reflectable/reflectable.dart';
import 'package:json_annotation/json_annotation.dart';

/// Define Reflectable with required capablities
class VnumTypeReflectable extends Reflectable {
  const VnumTypeReflectable() : super(invokingCapability, typeCapability, reflectedTypeCapability);
}

/// Define Reflectable attribute
const VnumDefinition = const VnumTypeReflectable();

/// Generic class defined here
@VnumDefinition
@JsonSerializable()
abstract class Vnum<T> {
  final T? value;
  const Vnum() : value = null;

  /// Returns an instance of Vnum with the provided value
  ///
  /// Instances should be defined static const
  ///
  /// ```
  /// static const MyVnum case1 = const MyVnum.define("my value");
  /// ```
  const Vnum.define(this.value);

  /// Returns an instance of Vnum if any of Vnum values matches the provided value
  ///
  /// Throws an exception if there is no match.
  ///
  /// ```
  /// var myVnum = MyVnum("my value");
  /// ```
  ///
  factory Vnum.fromValue(T value, dynamic baseType) {
    return _fetchValue<T>(value, baseType);
  }

  /// Find value through reflection, in case of no item, an exception will be thrown.
  static Vnum<T> _fetchValue<T>(T rawValue, dynamic baseType) {
    //Mirror the base type
    ClassMirror aMirror = VnumDefinition.reflectType(baseType) as ClassMirror;

    /// Get declerations
    final declarations = aMirror.declarations;

    /// Loop through variables and
    for (var key in declarations.keys) {
      /// Get info
      var parameterValue = declarations[key];

      /// Check if it is a variable definition
      if (!(parameterValue is VariableMirror)) {
        continue;
      }

      var value = parameterValue;

      /// Ignore the property is not declared as static const
      if (!value.isStatic || !value.isConst) {
        continue;
      }
      var staticParam = aMirror.invokeGetter(value.simpleName);
      var enumLoaded = staticParam as Vnum<T>;

      /// Return if any property has a same value provided
      if (enumLoaded.value == rawValue) {
        return enumLoaded;
      }
    }
    throw VnumValueException(T, baseType);
  }

  /// Returns list of all cases in the Vnum
  static List<Vnum> allCasesFor(dynamic object) {
    List<Vnum> _result = [];
    //Mirror the base type
    ClassMirror aMirror = VnumDefinition.reflectType(object) as ClassMirror;

    /// Get declerations
    final declarations = aMirror.declarations;

    /// Loop through variables and
    for (var key in declarations.keys) {
      /// Get info
      var parameterValue = declarations[key];

      /// Check if it is a variable definition
      if (!(parameterValue is VariableMirror)) {
        continue;
      }

      var value = parameterValue;

      /// Ignore the property is not declared as static const
      if (!value.isStatic || !value.isConst) {
        continue;
      }
      var staticParam = aMirror.invokeGetter(value.simpleName);
      var enumLoaded = staticParam as Vnum?;
      if (enumLoaded != null) {
        _result.add(enumLoaded);
      }
    }

    return _result;
  }

  /// Support for Json Serialization
  dynamic toJson() => this.value;
  factory Vnum.fromJson(dynamic json) => Vnum.fromValue(json, Vnum);

  /// Overriden the == operator
  bool operator ==(o) => o is Vnum<T> && o.value == value;
  int get hashCode => value.hashCode;
}

class VnumValueException<T> implements Exception {
  final String message;
  VnumValueException(T value, Type type) : message = value.toString() + " is not a valid value for " + type.toString();
}
