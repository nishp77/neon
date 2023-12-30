// OpenAPI client generated by Dynamite. Do not manually edit this file.

// ignore_for_file: camel_case_extensions, camel_case_types, discarded_futures
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: public_member_api_docs, unreachable_switch_case
// ignore_for_file: unused_element

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:dynamite_runtime/built_value.dart';
import 'package:dynamite_runtime/utils.dart' as dynamite_utils;
import 'package:meta/meta.dart';

part 'any_of.openapi.g.dart';

typedef OneObjectAnyOf = OneObjectAnyOf0;
typedef OneValueAnyOf = String;
typedef AnyOfIntDouble = num;
typedef AnyOfIntDoubleNum = num;

@BuiltValue(instantiable: false)
abstract interface class $ObjectAnyOf0Interface {
  @BuiltValueField(wireName: 'attribute1-anyOf')
  String get attribute1AnyOf;
}

abstract class ObjectAnyOf0 implements $ObjectAnyOf0Interface, Built<ObjectAnyOf0, ObjectAnyOf0Builder> {
  /// Creates a new ObjectAnyOf0 object using the builder pattern.
  factory ObjectAnyOf0([void Function(ObjectAnyOf0Builder)? b]) = _$ObjectAnyOf0;

  const ObjectAnyOf0._();

  /// Creates a new object from the given [json] data.
  ///
  /// Use [toJson] to serialize it back into json.
  factory ObjectAnyOf0.fromJson(Map<String, dynamic> json) => _$jsonSerializers.deserializeWith(serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Map<String, dynamic> toJson() => _$jsonSerializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  /// Serializer for ObjectAnyOf0.
  static Serializer<ObjectAnyOf0> get serializer => _$objectAnyOf0Serializer;
}

@BuiltValue(instantiable: false)
abstract interface class $ObjectAnyOf1Interface {
  @BuiltValueField(wireName: 'attribute2-anyOf')
  String get attribute2AnyOf;
}

abstract class ObjectAnyOf1 implements $ObjectAnyOf1Interface, Built<ObjectAnyOf1, ObjectAnyOf1Builder> {
  /// Creates a new ObjectAnyOf1 object using the builder pattern.
  factory ObjectAnyOf1([void Function(ObjectAnyOf1Builder)? b]) = _$ObjectAnyOf1;

  const ObjectAnyOf1._();

  /// Creates a new object from the given [json] data.
  ///
  /// Use [toJson] to serialize it back into json.
  factory ObjectAnyOf1.fromJson(Map<String, dynamic> json) => _$jsonSerializers.deserializeWith(serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Map<String, dynamic> toJson() => _$jsonSerializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  /// Serializer for ObjectAnyOf1.
  static Serializer<ObjectAnyOf1> get serializer => _$objectAnyOf1Serializer;
}

/// Any of with objects only.
typedef ObjectAnyOf = ({ObjectAnyOf0? objectAnyOf0, ObjectAnyOf1? objectAnyOf1});

@BuiltValue(instantiable: false)
abstract interface class $MixedAnyOf1Interface {
  @BuiltValueField(wireName: 'attribute-anyOf')
  String get attributeAnyOf;
}

abstract class MixedAnyOf1 implements $MixedAnyOf1Interface, Built<MixedAnyOf1, MixedAnyOf1Builder> {
  /// Creates a new MixedAnyOf1 object using the builder pattern.
  factory MixedAnyOf1([void Function(MixedAnyOf1Builder)? b]) = _$MixedAnyOf1;

  const MixedAnyOf1._();

  /// Creates a new object from the given [json] data.
  ///
  /// Use [toJson] to serialize it back into json.
  factory MixedAnyOf1.fromJson(Map<String, dynamic> json) => _$jsonSerializers.deserializeWith(serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Map<String, dynamic> toJson() => _$jsonSerializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  /// Serializer for MixedAnyOf1.
  static Serializer<MixedAnyOf1> get serializer => _$mixedAnyOf1Serializer;
}

/// Any of with object and primitive value.
typedef MixedAnyOf = ({MixedAnyOf1? mixedAnyOf1, String? string});

@BuiltValue(instantiable: false)
abstract interface class $OneObjectAnyOf0Interface {
  @BuiltValueField(wireName: 'attribute-anyOf')
  String get attributeAnyOf;
}

abstract class OneObjectAnyOf0 implements $OneObjectAnyOf0Interface, Built<OneObjectAnyOf0, OneObjectAnyOf0Builder> {
  /// Creates a new OneObjectAnyOf0 object using the builder pattern.
  factory OneObjectAnyOf0([void Function(OneObjectAnyOf0Builder)? b]) = _$OneObjectAnyOf0;

  const OneObjectAnyOf0._();

  /// Creates a new object from the given [json] data.
  ///
  /// Use [toJson] to serialize it back into json.
  factory OneObjectAnyOf0.fromJson(Map<String, dynamic> json) => _$jsonSerializers.deserializeWith(serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Map<String, dynamic> toJson() => _$jsonSerializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  /// Serializer for OneObjectAnyOf0.
  static Serializer<OneObjectAnyOf0> get serializer => _$oneObjectAnyOf0Serializer;
}

/// Any of with an integer, double and other value.
typedef AnyOfIntDoubleOther = ({num? $num, String? string});

/// Serialization extension for `ObjectAnyOf`.
extension $ObjectAnyOfExtension on ObjectAnyOf {
  /// Serializer for ObjectAnyOf.
  @BuiltValueSerializer(custom: true)
  static Serializer<ObjectAnyOf> get serializer => $0c9017d9a03ba2eb2f15acadeab85bbeExtension._serializer;

  /// Creates a new object from the given [json] data.
  ///
  /// Use `toJson` to serialize it back into json.
  static ObjectAnyOf fromJson(Object? json) => $0c9017d9a03ba2eb2f15acadeab85bbeExtension._fromJson(json);
}

/// Serialization extension for `MixedAnyOf`.
extension $MixedAnyOfExtension on MixedAnyOf {
  /// Serializer for MixedAnyOf.
  @BuiltValueSerializer(custom: true)
  static Serializer<MixedAnyOf> get serializer => $fba45e085ee99d64c5141852d4323e3dExtension._serializer;

  /// Creates a new object from the given [json] data.
  ///
  /// Use `toJson` to serialize it back into json.
  static MixedAnyOf fromJson(Object? json) => $fba45e085ee99d64c5141852d4323e3dExtension._fromJson(json);
}

/// Serialization extension for `AnyOfIntDoubleOther`.
extension $AnyOfIntDoubleOtherExtension on AnyOfIntDoubleOther {
  /// Serializer for AnyOfIntDoubleOther.
  @BuiltValueSerializer(custom: true)
  static Serializer<AnyOfIntDoubleOther> get serializer => $b6d67dc2a96424d2f407f8e51557f3deExtension._serializer;

  /// Creates a new object from the given [json] data.
  ///
  /// Use `toJson` to serialize it back into json.
  static AnyOfIntDoubleOther fromJson(Object? json) => $b6d67dc2a96424d2f407f8e51557f3deExtension._fromJson(json);
}

typedef _$0c9017d9a03ba2eb2f15acadeab85bbe = ({ObjectAnyOf0? objectAnyOf0, ObjectAnyOf1? objectAnyOf1});

/// @nodoc
// ignore: library_private_types_in_public_api
extension $0c9017d9a03ba2eb2f15acadeab85bbeExtension on _$0c9017d9a03ba2eb2f15acadeab85bbe {
  List<dynamic> get _values => [objectAnyOf0, objectAnyOf1];

  /// {@macro Dynamite.validateOneOf}
  void validateOneOf() => dynamite_utils.validateOneOf(_values);

  /// {@macro Dynamite.validateAnyOf}
  void validateAnyOf() => dynamite_utils.validateAnyOf(_values);
  static Serializer<_$0c9017d9a03ba2eb2f15acadeab85bbe> get _serializer =>
      const _$0c9017d9a03ba2eb2f15acadeab85bbeSerializer();
  static _$0c9017d9a03ba2eb2f15acadeab85bbe _fromJson(Object? json) =>
      _$jsonSerializers.deserializeWith(_serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Object? toJson() => _$jsonSerializers.serializeWith(_serializer, this);
}

class _$0c9017d9a03ba2eb2f15acadeab85bbeSerializer implements PrimitiveSerializer<_$0c9017d9a03ba2eb2f15acadeab85bbe> {
  const _$0c9017d9a03ba2eb2f15acadeab85bbeSerializer();

  @override
  Iterable<Type> get types => const [_$0c9017d9a03ba2eb2f15acadeab85bbe];

  @override
  String get wireName => r'_$0c9017d9a03ba2eb2f15acadeab85bbe';

  @override
  Object serialize(
    Serializers serializers,
    _$0c9017d9a03ba2eb2f15acadeab85bbe object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    dynamic value;
    value = object.objectAnyOf0;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(ObjectAnyOf0))!;
    }
    value = object.objectAnyOf1;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(ObjectAnyOf1))!;
    }
// Should not be possible after validation.
    throw StateError('Tried to serialize without any value.');
  }

  @override
  _$0c9017d9a03ba2eb2f15acadeab85bbe deserialize(
    Serializers serializers,
    Object data, {
    FullType specifiedType = FullType.unspecified,
  }) {
    ObjectAnyOf0? objectAnyOf0;
    try {
      objectAnyOf0 = serializers.deserialize(data, specifiedType: const FullType(ObjectAnyOf0))! as ObjectAnyOf0;
    } catch (_) {}
    ObjectAnyOf1? objectAnyOf1;
    try {
      objectAnyOf1 = serializers.deserialize(data, specifiedType: const FullType(ObjectAnyOf1))! as ObjectAnyOf1;
    } catch (_) {}
    return (objectAnyOf0: objectAnyOf0, objectAnyOf1: objectAnyOf1);
  }
}

typedef _$fba45e085ee99d64c5141852d4323e3d = ({MixedAnyOf1? mixedAnyOf1, String? string});

/// @nodoc
// ignore: library_private_types_in_public_api
extension $fba45e085ee99d64c5141852d4323e3dExtension on _$fba45e085ee99d64c5141852d4323e3d {
  List<dynamic> get _values => [mixedAnyOf1, string];

  /// {@macro Dynamite.validateOneOf}
  void validateOneOf() => dynamite_utils.validateOneOf(_values);

  /// {@macro Dynamite.validateAnyOf}
  void validateAnyOf() => dynamite_utils.validateAnyOf(_values);
  static Serializer<_$fba45e085ee99d64c5141852d4323e3d> get _serializer =>
      const _$fba45e085ee99d64c5141852d4323e3dSerializer();
  static _$fba45e085ee99d64c5141852d4323e3d _fromJson(Object? json) =>
      _$jsonSerializers.deserializeWith(_serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Object? toJson() => _$jsonSerializers.serializeWith(_serializer, this);
}

class _$fba45e085ee99d64c5141852d4323e3dSerializer implements PrimitiveSerializer<_$fba45e085ee99d64c5141852d4323e3d> {
  const _$fba45e085ee99d64c5141852d4323e3dSerializer();

  @override
  Iterable<Type> get types => const [_$fba45e085ee99d64c5141852d4323e3d];

  @override
  String get wireName => r'_$fba45e085ee99d64c5141852d4323e3d';

  @override
  Object serialize(
    Serializers serializers,
    _$fba45e085ee99d64c5141852d4323e3d object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    dynamic value;
    value = object.mixedAnyOf1;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(MixedAnyOf1))!;
    }
    value = object.string;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(String))!;
    }
// Should not be possible after validation.
    throw StateError('Tried to serialize without any value.');
  }

  @override
  _$fba45e085ee99d64c5141852d4323e3d deserialize(
    Serializers serializers,
    Object data, {
    FullType specifiedType = FullType.unspecified,
  }) {
    MixedAnyOf1? mixedAnyOf1;
    try {
      mixedAnyOf1 = serializers.deserialize(data, specifiedType: const FullType(MixedAnyOf1))! as MixedAnyOf1;
    } catch (_) {}
    String? string;
    try {
      string = serializers.deserialize(data, specifiedType: const FullType(String))! as String;
    } catch (_) {}
    return (mixedAnyOf1: mixedAnyOf1, string: string);
  }
}

typedef _$b6d67dc2a96424d2f407f8e51557f3de = ({num? $num, String? string});

/// @nodoc
// ignore: library_private_types_in_public_api
extension $b6d67dc2a96424d2f407f8e51557f3deExtension on _$b6d67dc2a96424d2f407f8e51557f3de {
  List<dynamic> get _values => [$num, string];

  /// {@macro Dynamite.validateOneOf}
  void validateOneOf() => dynamite_utils.validateOneOf(_values);

  /// {@macro Dynamite.validateAnyOf}
  void validateAnyOf() => dynamite_utils.validateAnyOf(_values);
  static Serializer<_$b6d67dc2a96424d2f407f8e51557f3de> get _serializer =>
      const _$b6d67dc2a96424d2f407f8e51557f3deSerializer();
  static _$b6d67dc2a96424d2f407f8e51557f3de _fromJson(Object? json) =>
      _$jsonSerializers.deserializeWith(_serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Object? toJson() => _$jsonSerializers.serializeWith(_serializer, this);
}

class _$b6d67dc2a96424d2f407f8e51557f3deSerializer implements PrimitiveSerializer<_$b6d67dc2a96424d2f407f8e51557f3de> {
  const _$b6d67dc2a96424d2f407f8e51557f3deSerializer();

  @override
  Iterable<Type> get types => const [_$b6d67dc2a96424d2f407f8e51557f3de];

  @override
  String get wireName => r'_$b6d67dc2a96424d2f407f8e51557f3de';

  @override
  Object serialize(
    Serializers serializers,
    _$b6d67dc2a96424d2f407f8e51557f3de object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    dynamic value;
    value = object.$num;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(num))!;
    }
    value = object.string;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(String))!;
    }
// Should not be possible after validation.
    throw StateError('Tried to serialize without any value.');
  }

  @override
  _$b6d67dc2a96424d2f407f8e51557f3de deserialize(
    Serializers serializers,
    Object data, {
    FullType specifiedType = FullType.unspecified,
  }) {
    num? $num;
    try {
      $num = serializers.deserialize(data, specifiedType: const FullType(num))! as num;
    } catch (_) {}
    String? string;
    try {
      string = serializers.deserialize(data, specifiedType: const FullType(String))! as String;
    } catch (_) {}
    return ($num: $num, string: string);
  }
}

// coverage:ignore-start
/// Serializer for all values in this library.
///
/// Serializes values into the `built_value` wire format.
/// See: [$jsonSerializers] for serializing into json.
@visibleForTesting
final Serializers $serializers = _$serializers;
final Serializers _$serializers = (Serializers().toBuilder()
      ..addBuilderFactory(const FullType(ObjectAnyOf0), ObjectAnyOf0Builder.new)
      ..add(ObjectAnyOf0.serializer)
      ..addBuilderFactory(const FullType(ObjectAnyOf1), ObjectAnyOf1Builder.new)
      ..add(ObjectAnyOf1.serializer)
      ..add($0c9017d9a03ba2eb2f15acadeab85bbeExtension._serializer)
      ..addBuilderFactory(const FullType(MixedAnyOf1), MixedAnyOf1Builder.new)
      ..add(MixedAnyOf1.serializer)
      ..add($fba45e085ee99d64c5141852d4323e3dExtension._serializer)
      ..addBuilderFactory(const FullType(OneObjectAnyOf0), OneObjectAnyOf0Builder.new)
      ..add(OneObjectAnyOf0.serializer)
      ..add($b6d67dc2a96424d2f407f8e51557f3deExtension._serializer))
    .build();

/// Serializer for all values in this library.
///
/// Serializes values into the json. Json serialization is more expensive than the built_value wire format.
/// See: [$serializers] for serializing into the `built_value` wire format.
@visibleForTesting
final Serializers $jsonSerializers = _$jsonSerializers;
final Serializers _$jsonSerializers = (_$serializers.toBuilder()
      ..add(DynamiteDoubleSerializer())
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(const HeaderPlugin())
      ..addPlugin(const ContentStringPlugin()))
    .build();
// coverage:ignore-end
