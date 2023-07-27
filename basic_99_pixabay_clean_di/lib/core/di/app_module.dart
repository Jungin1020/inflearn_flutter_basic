import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @prod
  @lazySingleton
  String get appTitle => 'Product Version';
}

@module
abstract class AppDebugModule {
  @dev
  @lazySingleton
  String get appTitle => 'Develop Version';
}
