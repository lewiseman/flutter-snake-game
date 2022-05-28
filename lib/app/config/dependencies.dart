import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

class SnakeGameDependencies {
  static initialize() async{
    if (kReleaseMode) {
      Logger.root.level = Level.WARNING;
    }
    Logger.root.onRecord.listen((LogRecord rec) {
      debugPrint(
          '${rec.level.name}: ${rec.time}: ${rec.loggerName} : ${rec.message}');
    });

    WidgetsFlutterBinding.ensureInitialized();
    _log.info('Going full screen');

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
}

Logger _log = Logger('dependancies.dart');
