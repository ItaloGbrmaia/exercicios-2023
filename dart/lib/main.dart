import 'package:chuva_dart/shared/app_module.dart';
import 'package:chuva_dart/shared/app_widgte.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
