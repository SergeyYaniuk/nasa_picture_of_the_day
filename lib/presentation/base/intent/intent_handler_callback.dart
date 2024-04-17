
import '../../entity/intent/intent.dart';

typedef IntentHandlerCallback<T extends BaseIntent> = void Function(T intent);