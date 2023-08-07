import 'dart:async';
import 'package:flutter/material.dart';
import 'app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

FutureOr<void> main() async {
  runApp(const ProviderScope(child: App()));
}
