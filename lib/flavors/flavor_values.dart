
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nasa_picture_of_the_day/foundation/extensions/dotenv_ext.dart';

class FlavorValues {
  final String apiBaseUrl;
  final bool useFakeData;
  final bool showLogs;
  final String nasaApiKey;

  const FlavorValues({
    required this.apiBaseUrl,
    required this.nasaApiKey,
    this.showLogs = false,
    this.useFakeData = false,
  });

  static FlavorValues fromEnvironment() {
    return FlavorValues(
        apiBaseUrl: dotenv.get("NASA_BASE_URL"),
        nasaApiKey: dotenv.get("NASA_API_KEY"),
        showLogs: dotenv.getBoolOrDefault("SHOW_LOGS", fallback: false),
    );
  }
}