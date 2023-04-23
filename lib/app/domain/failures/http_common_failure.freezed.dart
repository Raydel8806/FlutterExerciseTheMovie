// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_common_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HttpCommonFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpCommonFailureCopyWith<$Res> {
  factory $HttpCommonFailureCopyWith(
          HttpCommonFailure value, $Res Function(HttpCommonFailure) then) =
      _$HttpCommonFailureCopyWithImpl<$Res, HttpCommonFailure>;
}

/// @nodoc
class _$HttpCommonFailureCopyWithImpl<$Res, $Val extends HttpCommonFailure>
    implements $HttpCommonFailureCopyWith<$Res> {
  _$HttpCommonFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$HttpCommonFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'HttpCommonFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements HttpCommonFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$UnauthorizedCopyWith<$Res> {
  factory _$$UnauthorizedCopyWith(
          _$Unauthorized value, $Res Function(_$Unauthorized) then) =
      __$$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedCopyWithImpl<$Res>
    extends _$HttpCommonFailureCopyWithImpl<$Res, _$Unauthorized>
    implements _$$UnauthorizedCopyWith<$Res> {
  __$$UnauthorizedCopyWithImpl(
      _$Unauthorized _value, $Res Function(_$Unauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized();

  @override
  String toString() {
    return 'HttpCommonFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements HttpCommonFailure {
  const factory Unauthorized() = _$Unauthorized;
}

/// @nodoc
abstract class _$$NotFoundCopyWith<$Res> {
  factory _$$NotFoundCopyWith(
          _$NotFound value, $Res Function(_$NotFound) then) =
      __$$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundCopyWithImpl<$Res>
    extends _$HttpCommonFailureCopyWithImpl<$Res, _$NotFound>
    implements _$$NotFoundCopyWith<$Res> {
  __$$NotFoundCopyWithImpl(_$NotFound _value, $Res Function(_$NotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound();

  @override
  String toString() {
    return 'HttpCommonFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements HttpCommonFailure {
  const factory NotFound() = _$NotFound;
}

/// @nodoc
abstract class _$$UnknownErrorCopyWith<$Res> {
  factory _$$UnknownErrorCopyWith(
          _$UnknownError value, $Res Function(_$UnknownError) then) =
      __$$UnknownErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownErrorCopyWithImpl<$Res>
    extends _$HttpCommonFailureCopyWithImpl<$Res, _$UnknownError>
    implements _$$UnknownErrorCopyWith<$Res> {
  __$$UnknownErrorCopyWithImpl(
      _$UnknownError _value, $Res Function(_$UnknownError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownError implements UnknownError {
  const _$UnknownError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HttpCommonFailure.unknownError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorCopyWith<_$UnknownError> get copyWith =>
      __$$UnknownErrorCopyWithImpl<_$UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) {
    return unknownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) {
    return unknownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements HttpCommonFailure {
  const factory UnknownError(final String message) = _$UnknownError;

  String get message;
  @JsonKey(ignore: true)
  _$$UnknownErrorCopyWith<_$UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestCopyWith<$Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest value, $Res Function(_$BadRequest) then) =
      __$$BadRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadRequestCopyWithImpl<$Res>
    extends _$HttpCommonFailureCopyWithImpl<$Res, _$BadRequest>
    implements _$$BadRequestCopyWith<$Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest _value, $Res Function(_$BadRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BadRequest implements BadRequest {
  const _$BadRequest();

  @override
  String toString() {
    return 'HttpCommonFailure.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements HttpCommonFailure {
  const factory BadRequest() = _$BadRequest;
}

/// @nodoc
abstract class _$$ForbiddenCopyWith<$Res> {
  factory _$$ForbiddenCopyWith(
          _$Forbidden value, $Res Function(_$Forbidden) then) =
      __$$ForbiddenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForbiddenCopyWithImpl<$Res>
    extends _$HttpCommonFailureCopyWithImpl<$Res, _$Forbidden>
    implements _$$ForbiddenCopyWith<$Res> {
  __$$ForbiddenCopyWithImpl(
      _$Forbidden _value, $Res Function(_$Forbidden) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Forbidden implements Forbidden {
  const _$Forbidden();

  @override
  String toString() {
    return 'HttpCommonFailure.forbidden()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Forbidden);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) {
    return forbidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) {
    return forbidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class Forbidden implements HttpCommonFailure {
  const factory Forbidden() = _$Forbidden;
}

/// @nodoc
abstract class _$$ConflictCopyWith<$Res> {
  factory _$$ConflictCopyWith(
          _$Conflict value, $Res Function(_$Conflict) then) =
      __$$ConflictCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConflictCopyWithImpl<$Res>
    extends _$HttpCommonFailureCopyWithImpl<$Res, _$Conflict>
    implements _$$ConflictCopyWith<$Res> {
  __$$ConflictCopyWithImpl(_$Conflict _value, $Res Function(_$Conflict) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Conflict implements Conflict {
  const _$Conflict();

  @override
  String toString() {
    return 'HttpCommonFailure.conflict()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Conflict);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) {
    return conflict();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) {
    return conflict?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class Conflict implements HttpCommonFailure {
  const factory Conflict() = _$Conflict;
}

/// @nodoc
abstract class _$$TooManyRequestsCopyWith<$Res> {
  factory _$$TooManyRequestsCopyWith(
          _$TooManyRequests value, $Res Function(_$TooManyRequests) then) =
      __$$TooManyRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TooManyRequestsCopyWithImpl<$Res>
    extends _$HttpCommonFailureCopyWithImpl<$Res, _$TooManyRequests>
    implements _$$TooManyRequestsCopyWith<$Res> {
  __$$TooManyRequestsCopyWithImpl(
      _$TooManyRequests _value, $Res Function(_$TooManyRequests) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TooManyRequests implements TooManyRequests {
  const _$TooManyRequests();

  @override
  String toString() {
    return 'HttpCommonFailure.tooManyRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooManyRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthorized,
    required TResult Function() notFound,
    required TResult Function(String message) unknownError,
    required TResult Function() badRequest,
    required TResult Function() forbidden,
    required TResult Function() conflict,
    required TResult Function() tooManyRequests,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? unauthorized,
    TResult? Function()? notFound,
    TResult? Function(String message)? unknownError,
    TResult? Function()? badRequest,
    TResult? Function()? forbidden,
    TResult? Function()? conflict,
    TResult? Function()? tooManyRequests,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthorized,
    TResult Function()? notFound,
    TResult Function(String message)? unknownError,
    TResult Function()? badRequest,
    TResult Function()? forbidden,
    TResult Function()? conflict,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(NotFound value) notFound,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(Conflict value) conflict,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(UnknownError value)? unknownError,
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(Conflict value)? conflict,
    TResult? Function(TooManyRequests value)? tooManyRequests,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(NotFound value)? notFound,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(Conflict value)? conflict,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequests implements HttpCommonFailure {
  const factory TooManyRequests() = _$TooManyRequests;
}
