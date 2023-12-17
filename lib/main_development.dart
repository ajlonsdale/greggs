import 'package:flutter/material.dart';
import 'package:greggs/app/app.dart';
import 'package:greggs/bootstrap.dart';
import 'package:greggs/env/env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ENV.instance.initialize('env/development.json', Environment.dev);

  await bootstrap(() => const App());
}
