import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_common_failure.freezed.dart';

@freezed
class HttpCommonFailure with _$HttpCommonFailure {
  const factory HttpCommonFailure.serverError() = ServerError;
  const factory HttpCommonFailure.unauthorized() = Unauthorized;
  const factory HttpCommonFailure.notFound() = NotFound;
  const factory HttpCommonFailure.unknownError(String message) = UnknownError;
  const factory HttpCommonFailure.badRequest() = BadRequest;
  const factory HttpCommonFailure.forbidden() = Forbidden;
  const factory HttpCommonFailure.conflict() = Conflict;
  const factory HttpCommonFailure.tooManyRequests() = TooManyRequests;
}
