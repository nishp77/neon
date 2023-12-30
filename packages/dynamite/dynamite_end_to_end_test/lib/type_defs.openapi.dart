// OpenAPI client generated by Dynamite. Do not manually edit this file.

// ignore_for_file: camel_case_extensions, camel_case_types, discarded_futures
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: public_member_api_docs, unreachable_switch_case
// ignore_for_file: unused_element

import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:dynamite_runtime/built_value.dart';
import 'package:dynamite_runtime/utils.dart' as dynamite_utils;
import 'package:meta/meta.dart';

part 'type_defs.openapi.g.dart';

typedef TypeResultBase = int;
typedef EmptySchema = dynamic;
typedef Redirect = Base;
typedef RedirectBaseType = int;
typedef RedirectEmptyType = dynamic;

@BuiltValue(instantiable: false)
abstract interface class $BaseInterface {
  String? get attribute;
}

abstract class Base implements $BaseInterface, Built<Base, BaseBuilder> {
  /// Creates a new Base object using the builder pattern.
  factory Base([void Function(BaseBuilder)? b]) = _$Base;

  const Base._();

  /// Creates a new object from the given [json] data.
  ///
  /// Use [toJson] to serialize it back into json.
  factory Base.fromJson(Map<String, dynamic> json) => _$jsonSerializers.deserializeWith(serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Map<String, dynamic> toJson() => _$jsonSerializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  /// Serializer for Base.
  static Serializer<Base> get serializer => _$baseSerializer;
}

@BuiltValue(instantiable: false)
abstract interface class $NestedRedirectInterface {
  Base? get redirect;
  int? get redirectBaseType;
  JsonObject? get redirectEmptyType;
}

abstract class NestedRedirect implements $NestedRedirectInterface, Built<NestedRedirect, NestedRedirectBuilder> {
  /// Creates a new NestedRedirect object using the builder pattern.
  factory NestedRedirect([void Function(NestedRedirectBuilder)? b]) = _$NestedRedirect;

  const NestedRedirect._();

  /// Creates a new object from the given [json] data.
  ///
  /// Use [toJson] to serialize it back into json.
  factory NestedRedirect.fromJson(Map<String, dynamic> json) => _$jsonSerializers.deserializeWith(serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Map<String, dynamic> toJson() => _$jsonSerializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  /// Serializer for NestedRedirect.
  static Serializer<NestedRedirect> get serializer => _$nestedRedirectSerializer;
}

typedef SomeOfRedirect = ({Base? base, int? $int, JsonObject? jsonObject});

/// Serialization extension for `SomeOfRedirect`.
extension $SomeOfRedirectExtension on SomeOfRedirect {
  /// Serializer for SomeOfRedirect.
  @BuiltValueSerializer(custom: true)
  static Serializer<SomeOfRedirect> get serializer => $e1c7ecea8e5fdae7b94cd86c0dc4f1baExtension._serializer;

  /// Creates a new object from the given [json] data.
  ///
  /// Use `toJson` to serialize it back into json.
  static SomeOfRedirect fromJson(Object? json) => $e1c7ecea8e5fdae7b94cd86c0dc4f1baExtension._fromJson(json);
}

typedef _$e1c7ecea8e5fdae7b94cd86c0dc4f1ba = ({Base? base, int? $int, JsonObject? jsonObject});

/// @nodoc
// ignore: library_private_types_in_public_api
extension $e1c7ecea8e5fdae7b94cd86c0dc4f1baExtension on _$e1c7ecea8e5fdae7b94cd86c0dc4f1ba {
  List<dynamic> get _values => [base, $int, jsonObject];

  /// {@macro Dynamite.validateOneOf}
  void validateOneOf() => dynamite_utils.validateOneOf(_values);

  /// {@macro Dynamite.validateAnyOf}
  void validateAnyOf() => dynamite_utils.validateAnyOf(_values);
  static Serializer<_$e1c7ecea8e5fdae7b94cd86c0dc4f1ba> get _serializer =>
      const _$e1c7ecea8e5fdae7b94cd86c0dc4f1baSerializer();
  static _$e1c7ecea8e5fdae7b94cd86c0dc4f1ba _fromJson(Object? json) =>
      _$jsonSerializers.deserializeWith(_serializer, json)!;

  /// Parses this object into a json like map.
  ///
  /// Use the fromJson factory to revive it again.
  Object? toJson() => _$jsonSerializers.serializeWith(_serializer, this);
}

class _$e1c7ecea8e5fdae7b94cd86c0dc4f1baSerializer implements PrimitiveSerializer<_$e1c7ecea8e5fdae7b94cd86c0dc4f1ba> {
  const _$e1c7ecea8e5fdae7b94cd86c0dc4f1baSerializer();

  @override
  Iterable<Type> get types => const [_$e1c7ecea8e5fdae7b94cd86c0dc4f1ba];

  @override
  String get wireName => r'_$e1c7ecea8e5fdae7b94cd86c0dc4f1ba';

  @override
  Object serialize(
    Serializers serializers,
    _$e1c7ecea8e5fdae7b94cd86c0dc4f1ba object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    dynamic value;
    value = object.base;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(Base))!;
    }
    value = object.$int;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(int))!;
    }
    value = object.jsonObject;
    if (value != null) {
      return serializers.serialize(value, specifiedType: const FullType(JsonObject))!;
    }
// Should not be possible after validation.
    throw StateError('Tried to serialize without any value.');
  }

  @override
  _$e1c7ecea8e5fdae7b94cd86c0dc4f1ba deserialize(
    Serializers serializers,
    Object data, {
    FullType specifiedType = FullType.unspecified,
  }) {
    Base? base;
    try {
      base = serializers.deserialize(data, specifiedType: const FullType(Base))! as Base;
    } catch (_) {}
    int? $int;
    try {
      $int = serializers.deserialize(data, specifiedType: const FullType(int))! as int;
    } catch (_) {}
    JsonObject? jsonObject;
    try {
      jsonObject = serializers.deserialize(data, specifiedType: const FullType(JsonObject))! as JsonObject;
    } catch (_) {}
    return (base: base, $int: $int, jsonObject: jsonObject);
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
      ..addBuilderFactory(const FullType(Base), BaseBuilder.new)
      ..add(Base.serializer)
      ..addBuilderFactory(const FullType(NestedRedirect), NestedRedirectBuilder.new)
      ..add(NestedRedirect.serializer)
      ..add($e1c7ecea8e5fdae7b94cd86c0dc4f1baExtension._serializer))
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
