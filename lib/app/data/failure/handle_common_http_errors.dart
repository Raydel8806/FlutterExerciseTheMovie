import 'package:http/http.dart' as http;

import '../../domain/failures/http_common_failure.dart';

HttpCommonFailure handleCommonHttpErrors(http.Response response) {
  switch (response.statusCode) {
    case 400:
      return const HttpCommonFailure.badRequest();
    case 401:
      return const HttpCommonFailure.unauthorized();
    case 403:
      return const HttpCommonFailure.forbidden();
    case 404:
      return const HttpCommonFailure.notFound();
    case 409:
      return const HttpCommonFailure.conflict();
    case 429:
      return const HttpCommonFailure.tooManyRequests();
    case 500:
    case 501:
    case 502:
    case 503:
    case 504:
      return const HttpCommonFailure.serverError();
    default:
      return HttpCommonFailure.unknownError(response.reasonPhrase.toString());
  }
}
