
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en_US = {
    "home": "Home",
    "picture": "Picture"
  };
  static const Map<String, dynamic> uk_UA = {
    "home": "Головна",
    "picture": "Картинка"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "en_US": en_US,
    "uk_UA": uk_UA
  };
}