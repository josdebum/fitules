import 'package:fitules/core/themes/theme_notifier.dart';
import 'package:provider/provider.dart';

var repositoryProviders = [
  ChangeNotifierProvider<ThemeNotifier>(create: (_) => ThemeNotifier()),

];