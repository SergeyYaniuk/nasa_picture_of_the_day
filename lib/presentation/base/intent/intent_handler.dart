
import '../../entity/intent/intent.dart';

abstract interface class IntentHandler<T extends BaseIntent> {
  void onIntent(T intent);
}