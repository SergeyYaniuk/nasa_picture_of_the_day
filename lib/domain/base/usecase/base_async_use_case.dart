import 'package:nasa_picture_of_the_day/foundation/extensions/object_ext.dart';

import '../../../core/entity/result.dart';
import '../exception/unknown_object_thrown_exception.dart';

abstract class BaseAsyncUseCase<IN, OUT> {
  Future<OUT> callInternal(IN param);

  Future<Result<OUT>> call({required IN param}) async {
    logD("call: param = $param");
    try {
      final result = await callInternal(param);
      return Success(data: result);
    } catch (error) {
      final Exception exception;

      if (error is Exception) {
        exception = error;
      } else {
        exception = UnknownObjectThrownException(object: error);
      }
      return Error(exception: exception);
    }
  }
}