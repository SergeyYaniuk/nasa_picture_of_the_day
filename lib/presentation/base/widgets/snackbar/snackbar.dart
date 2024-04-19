
import 'package:flutter/material.dart';

import '../../../entity/effect/effect.dart';

GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
GlobalKey<ScaffoldMessengerState>();

void showSnackbar(SnackBarEffect effect) async {
  if (effect.closeCurrentSnackbar) {
    scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
  }

  final snackBar = SnackBar(
    content: Text(effect.text),
    duration: effect.duration,
    behavior: effect.behavior,
  );

  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}