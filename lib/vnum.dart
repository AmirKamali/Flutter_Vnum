library vnum;
import 'package:reflectable/reflectable.dart';

/// Define Reflectable with required capablities
class EnumTypeReflectable extends Reflectable {
  const EnumTypeReflectable()
      : super(invokingCapability, typeCapability, reflectedTypeCapability);
}

/// Define Reflectable
const EnumReflectable = const EnumTypeReflectable();

/// Generic class defined here
@EnumReflectable
class VNum<T> {
  final T value;
  const VNum() : value = null;

  /// Define new cases using this constructor as final static variables
  const VNum.define(this.value);

  /// Factory constructor Enum using default value
  factory VNum.fromValue(T value, dynamic baseType) {
    return _fetchValue(value, baseType);
  }

  /// Find value through reflection, in case of no item, will return null
  static dynamic _fetchValue(dynamic rawValue, dynamic baseType) {
    //Mirror the base type
    ClassMirror aMirror = EnumReflectable.reflectType(baseType);
    
    /// Get declerations
    final declarations = aMirror.declarations;

    /// Loop through variables and 
    for (var key in declarations.keys) {
      /// Get info
      var parameterValue = declarations[key];

      /// Check if it is a variable definition
      if (!(parameterValue is VariableMirror)){
        continue;
      }
      
      var value = parameterValue as VariableMirror;
      /// Ignore the property is not declared as static final
      if (!value.isStatic || !value.isFinal) {
        continue;
      }
      var staticParam = aMirror.invokeGetter(value.simpleName);
      var enumLoaded = staticParam as VNum;

      /// Return if any property has a same value provided
      if (enumLoaded != null && enumLoaded.value == rawValue) {
        return enumLoaded;
      }
    }
    return null;
  }

  /// Overriden the == operator
  bool operator ==(o) => o is VNum<T> && o.value == value;
  int get hashCode => value.hashCode;
}
