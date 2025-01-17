// ignore_for_file: camel_case_types
// ignore_for_file: discarded_futures
// ignore_for_file: public_member_api_docs
// ignore_for_file: unreachable_switch_case
// ignore_for_file: camel_case_extensions
import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:collection/collection.dart';
import 'package:dynamite_runtime/built_value.dart';
import 'package:dynamite_runtime/http_client.dart';
import 'package:meta/meta.dart';
import 'package:universal_io/io.dart';
import 'package:uri/uri.dart';

part 'files_trashbin.openapi.g.dart';

class Client extends DynamiteClient {
  Client(
    super.baseURL, {
    super.baseHeaders,
    super.userAgent,
    super.httpClient,
    super.cookieJar,
    super.authentications,
  });

  Client.fromClient(DynamiteClient client)
      : super(
          client.baseURL,
          baseHeaders: client.baseHeaders,
          httpClient: client.httpClient,
          cookieJar: client.cookieJar,
          authentications: client.authentications,
        );

  PreviewClient get preview => PreviewClient(this);
}

class PreviewClient {
  PreviewClient(this._rootClient);

  final Client _rootClient;

  /// Get the preview for a file.
  ///
  /// Returns a [Future] containing a [DynamiteResponse] with the status code, deserialized body and headers.
  /// Throws a [DynamiteApiException] if the API call does not return an expected status code.
  ///
  /// Parameters:
  ///   * [fileId] ID of the file. Defaults to `-1`.
  ///   * [x] Width of the preview. Defaults to `32`.
  ///   * [y] Height of the preview. Defaults to `32`.
  ///   * [a] Whether to not crop the preview. Defaults to `0`.
  ///
  /// Status codes:
  ///   * 200: Preview returned
  ///   * 400: Getting preview is not possible
  ///   * 404: Preview not found
  ///
  /// See:
  ///  * [getPreviewRaw] for an experimental operation that returns a [DynamiteRawResponse] that can be serialized.
  Future<DynamiteResponse<Uint8List, void>> getPreview({
    int? fileId,
    int? x,
    int? y,
    int? a,
  }) async {
    final rawResponse = getPreviewRaw(
      fileId: fileId,
      x: x,
      y: y,
      a: a,
    );

    return rawResponse.future;
  }

  /// Get the preview for a file.
  ///
  /// This method and the response it returns is experimental. The API might change without a major version bump.
  ///
  /// Returns a [Future] containing a [DynamiteRawResponse] with the raw [HttpClientResponse] and serialization helpers.
  /// Throws a [DynamiteApiException] if the API call does not return an expected status code.
  ///
  /// Parameters:
  ///   * [fileId] ID of the file. Defaults to `-1`.
  ///   * [x] Width of the preview. Defaults to `32`.
  ///   * [y] Height of the preview. Defaults to `32`.
  ///   * [a] Whether to not crop the preview. Defaults to `0`.
  ///
  /// Status codes:
  ///   * 200: Preview returned
  ///   * 400: Getting preview is not possible
  ///   * 404: Preview not found
  ///
  /// See:
  ///  * [getPreview] for an operation that returns a [DynamiteResponse] with a stable API.
  @experimental
  DynamiteRawResponse<Uint8List, void> getPreviewRaw({
    int? fileId,
    int? x,
    int? y,
    int? a,
  }) {
    final parameters = <String, dynamic>{};
    final headers = <String, String>{
      'Accept': '*/*',
    };
    Uint8List? body;

// coverage:ignore-start
    final authentication = _rootClient.authentications.firstWhereOrNull(
      (auth) => switch (auth) {
        DynamiteHttpBearerAuthentication() || DynamiteHttpBasicAuthentication() => true,
        _ => false,
      },
    );

    if (authentication != null) {
      headers.addAll(
        authentication.headers,
      );
    } else {
      throw Exception('Missing authentication for bearer_auth or basic_auth');
    }

// coverage:ignore-end
    var $fileId = jsonSerializers.serialize(fileId, specifiedType: const FullType(int));
    $fileId ??= -1;
    parameters['fileId'] = $fileId;

    var $x = jsonSerializers.serialize(x, specifiedType: const FullType(int));
    $x ??= 32;
    parameters['x'] = $x;

    var $y = jsonSerializers.serialize(y, specifiedType: const FullType(int));
    $y ??= 32;
    parameters['y'] = $y;

    var $a = jsonSerializers.serialize(a, specifiedType: const FullType(int));
    $a ??= 0;
    parameters['a'] = $a;

    final path = UriTemplate('/index.php/apps/files_trashbin/preview{?fileId*,x*,y*,a*}').expand(parameters);
    return DynamiteRawResponse<Uint8List, void>(
      response: _rootClient.executeRequest(
        'get',
        path,
        headers,
        body,
        const {200},
      ),
      bodyType: const FullType(Uint8List),
      headersType: null,
      serializers: jsonSerializers,
    );
  }
}

@BuiltValue(instantiable: false)
abstract interface class $Capabilities_FilesInterface {
  bool get undelete;
}

abstract class Capabilities_Files
    implements $Capabilities_FilesInterface, Built<Capabilities_Files, Capabilities_FilesBuilder> {
  factory Capabilities_Files([void Function(Capabilities_FilesBuilder)? b]) = _$Capabilities_Files;

  // coverage:ignore-start
  const Capabilities_Files._();
  // coverage:ignore-end

  // coverage:ignore-start
  factory Capabilities_Files.fromJson(Map<String, dynamic> json) => jsonSerializers.deserializeWith(serializer, json)!;
  // coverage:ignore-end

  // coverage:ignore-start
  Map<String, dynamic> toJson() => jsonSerializers.serializeWith(serializer, this)! as Map<String, dynamic>;
  // coverage:ignore-end

  static Serializer<Capabilities_Files> get serializer => _$capabilitiesFilesSerializer;
}

@BuiltValue(instantiable: false)
abstract interface class $CapabilitiesInterface {
  Capabilities_Files get files;
}

abstract class Capabilities implements $CapabilitiesInterface, Built<Capabilities, CapabilitiesBuilder> {
  factory Capabilities([void Function(CapabilitiesBuilder)? b]) = _$Capabilities;

  // coverage:ignore-start
  const Capabilities._();
  // coverage:ignore-end

  // coverage:ignore-start
  factory Capabilities.fromJson(Map<String, dynamic> json) => jsonSerializers.deserializeWith(serializer, json)!;
  // coverage:ignore-end

  // coverage:ignore-start
  Map<String, dynamic> toJson() => jsonSerializers.serializeWith(serializer, this)! as Map<String, dynamic>;
  // coverage:ignore-end

  static Serializer<Capabilities> get serializer => _$capabilitiesSerializer;
}

// coverage:ignore-start
@visibleForTesting
final Serializers serializers = (Serializers().toBuilder()
      ..addBuilderFactory(const FullType(Capabilities), CapabilitiesBuilder.new)
      ..add(Capabilities.serializer)
      ..addBuilderFactory(const FullType(Capabilities_Files), Capabilities_FilesBuilder.new)
      ..add(Capabilities_Files.serializer))
    .build();

@visibleForTesting
final Serializers jsonSerializers = (serializers.toBuilder()
      ..add(DynamiteDoubleSerializer())
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(const ContentStringPlugin()))
    .build();
// coverage:ignore-end
