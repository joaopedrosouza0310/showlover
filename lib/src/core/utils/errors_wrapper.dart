import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

import '../core.dart';

String? handleRemoteErrorMessage(RequestErrorResult? result) {
  if (result == null) return null;

  switch (result) {
    case RequestErrorResult.unableToRetrieveData:
      return 'Unable to retrieve data';
    case RequestErrorResult.httpError:
      return 'HTTP request error';
    case RequestErrorResult.jsonFormatError:
      return 'JSON format error';
    case RequestErrorResult.networkError:
      return 'Network error';
    case RequestErrorResult.typeError:
      return 'Type error';
  }
}

Future<U> errorsWrapper<T, U>({
  required Future<T> Function() request,
  required U Function(T data) onSuccess,
  required U Function(RequestErrorResult error) onError,
  required DefaultLogger logger,
}) async {
  try {
    return onSuccess(await request.call());
  } on SocketException catch (e) {
    // Network error
    logger.error('Network error: ${e.toString()}');
    return onError(RequestErrorResult.networkError);
  } on DioException catch (e) {
    // HTTP error
    logger.error('HTTP error: ${e.toString()}');
    return onError(RequestErrorResult.httpError);
  } on FormatException catch (e) {
    // JSON format error
    logger.error('JSON format error: ${e.toString()}');
    return onError(RequestErrorResult.jsonFormatError);
  } on TypeError catch (e) {
    // Type error
    logger.error('Type error: ${e.toString()}');
    return onError(RequestErrorResult.typeError);
  } catch (e) {
    // Unable to retrieve data
    logger.error('Unable to retrieve data: ${e.toString()}');
    return onError(RequestErrorResult.unableToRetrieveData);
  }
}
