// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import 'package:vnum/vnum.dart' as prefix0;
import 'test_types.dart' as prefix1;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.VnumTypeReflectable(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'CarType',
            r'.CarType',
            7,
            0,
            const prefix0.VnumTypeReflectable(),
            const <int>[0, 1, 2, 3, 9, 10],
            const <int>[11, 12, 13, 14, 15, 16],
            const <int>[5, 6, 7, 8],
            -1,
            {
              r'sedan': () => prefix1.CarType.sedan,
              r'suv': () => prefix1.CarType.suv,
              r'truck': () => prefix1.CarType.truck,
              r'none': () => prefix1.CarType.none
            },
            {},
            {
              r'define': (bool b) =>
                  (fromValue) => b ? prefix1.CarType.define(fromValue) : null,
              r'': (bool b) => (value) => b ? prefix1.CarType(value) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.GenericClassMirrorImpl(
            r'Vnum',
            r'vnum.Vnum',
            519,
            1,
            const prefix0.VnumTypeReflectable(),
            const <int>[4, 17, 11, 14, 18, 19, 20],
            const <int>[11, 12, 13, 14, 15, 16],
            const <int>[17],
            -1,
            {r'allCasesFor': () => prefix0.Vnum.allCasesFor},
            {},
            {
              r'fromValue': (bool b) => (value, baseType) =>
                  b ? prefix0.Vnum.fromValue(value, baseType) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            null,
            (o) => false,
            const <int>[2],
            1),
        r.TypeVariableMirrorImpl(r'T', r'vnum.Vnum.T',
            const prefix0.VnumTypeReflectable(), -1, 1, null)
      ],
      <m.DeclarationMirror>[
        r.VariableMirrorImpl(r'sedan', 33941, 0,
            const prefix0.VnumTypeReflectable(), 0, 0, 0, null, null),
        r.VariableMirrorImpl(r'suv', 33941, 0,
            const prefix0.VnumTypeReflectable(), 0, 0, 0, null, null),
        r.VariableMirrorImpl(r'truck', 33941, 0,
            const prefix0.VnumTypeReflectable(), 0, 0, 0, null, null),
        r.VariableMirrorImpl(r'none', 33941, 0,
            const prefix0.VnumTypeReflectable(), 0, 0, 0, null, null),
        r.VariableMirrorImpl(r'value', 1029, 1,
            const prefix0.VnumTypeReflectable(), -1, -1, -1, null, null),
        r.ImplicitGetterMirrorImpl(const prefix0.VnumTypeReflectable(), 0, 5),
        r.ImplicitGetterMirrorImpl(const prefix0.VnumTypeReflectable(), 1, 6),
        r.ImplicitGetterMirrorImpl(const prefix0.VnumTypeReflectable(), 2, 7),
        r.ImplicitGetterMirrorImpl(const prefix0.VnumTypeReflectable(), 3, 8),
        r.MethodMirrorImpl(r'define', 128, 0, -1, 0, 0, null, const <int>[0],
            const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'', 1, 0, -1, 0, 0, null, const <int>[1],
            const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'==', 131074, 1, -1, 2, 2, null, const <int>[2],
            const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'toString', 131074, -1, -1, 3, 3, null,
            const <int>[], const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'noSuchMethod', 65538, -1, -1, -1, -1, null,
            const <int>[3], const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'hashCode', 131075, 1, -1, 4, 4, null,
            const <int>[], const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'runtimeType', 131075, -1, -1, 5, 5, null,
            const <int>[], const prefix0.VnumTypeReflectable(), null),
        r.ImplicitGetterMirrorImpl(const prefix0.VnumTypeReflectable(), 4, 16),
        r.MethodMirrorImpl(r'allCasesFor', 4325394, 1, -1, 6, 7, null,
            const <int>[4], const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'', 128, 1, -1, 8, 1, null, const <int>[],
            const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'define', 128, 1, -1, 8, 1, null, const <int>[5],
            const prefix0.VnumTypeReflectable(), null),
        r.MethodMirrorImpl(r'fromValue', 1, 1, -1, 8, 1, null,
            const <int>[6, 7], const prefix0.VnumTypeReflectable(), null)
      ],
      <m.ParameterMirror>[
        r.ParameterMirrorImpl(
            r'fromValue',
            32774,
            9,
            const prefix0.VnumTypeReflectable(),
            -1,
            3,
            3,
            null,
            null,
            null,
            null),
        r.ParameterMirrorImpl(
            r'value',
            32774,
            10,
            const prefix0.VnumTypeReflectable(),
            -1,
            3,
            3,
            null,
            null,
            null,
            null),
        r.ParameterMirrorImpl(
            r'o',
            32774,
            11,
            const prefix0.VnumTypeReflectable(),
            -1,
            9,
            9,
            null,
            null,
            null,
            null),
        r.ParameterMirrorImpl(
            r'invocation',
            32774,
            13,
            const prefix0.VnumTypeReflectable(),
            -1,
            10,
            10,
            null,
            null,
            null,
            null),
        r.ParameterMirrorImpl(
            r'object',
            16390,
            17,
            const prefix0.VnumTypeReflectable(),
            -1,
            -1,
            -1,
            null,
            null,
            null,
            null),
        r.ParameterMirrorImpl(
            r'value',
            1030,
            19,
            const prefix0.VnumTypeReflectable(),
            -1,
            -1,
            -1,
            null,
            null,
            null,
            null),
        r.ParameterMirrorImpl(
            r'value',
            6,
            20,
            const prefix0.VnumTypeReflectable(),
            -1,
            -1,
            -1,
            null,
            null,
            null,
            null),
        r.ParameterMirrorImpl(
            r'baseType',
            32774,
            20,
            const prefix0.VnumTypeReflectable(),
            -1,
            5,
            5,
            null,
            null,
            null,
            null)
      ],
      <Type>[
        prefix1.CarType,
        prefix0.Vnum,
        bool,
        String,
        int,
        Type,
        const m.TypeValue<List<prefix0.Vnum<dynamic>>>().type,
        List,
        const r.FakeType(r'vnum.Vnum<T>'),
        Object,
        Invocation
      ],
      2,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'value': (dynamic instance) => instance.value
      },
      {},
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
