// ignore_for_file: camel_case_types
// ignore_for_file: discarded_futures
// ignore_for_file: public_member_api_docs
// ignore_for_file: unreachable_switch_case
// ignore_for_file: unused_element
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:dynamite_runtime/built_value.dart';
import 'package:meta/meta.dart';

part 'enum.openapi.g.dart';

class EnumString extends EnumClass {
  const EnumString._(super.name);

  static const EnumString test = _$enumStringTest;

  @BuiltValueEnumConst(wireName: 'default')
  static const EnumString $default = _$enumStringDefault;

  static BuiltSet<EnumString> get values => _$enumStringValues;

  static EnumString valueOf(String name) => _$valueOfEnumString(name);

  static Serializer<EnumString> get serializer => _$enumStringSerializer;
}

// coverage:ignore-start
@visibleForTesting
final Serializers serializers = (Serializers().toBuilder()..add(EnumString.serializer)).build();

@visibleForTesting
final Serializers jsonSerializers = (serializers.toBuilder()
      ..add(DynamiteDoubleSerializer())
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(const HeaderPlugin())
      ..addPlugin(const ContentStringPlugin()))
    .build();
// coverage:ignore-end
