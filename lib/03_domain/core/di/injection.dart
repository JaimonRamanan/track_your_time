import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:track_your_time/03_domain/core/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependancies() async => getIt.init();
