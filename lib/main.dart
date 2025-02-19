import 'package:flutter/material.dart';

import 'package:provider/provider.dart' show ChangeNotifierProvider;

import 'app.dart';
import 'providers/app_state_provider.dart';
import 'repositories/theme_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;

  final ThemeRepository themeRepo = ThemeRepository(0, false);

  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => AppStateProvider(themeRepo),
    child: App(),
  ));
}
