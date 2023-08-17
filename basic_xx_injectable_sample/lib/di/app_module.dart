import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @prod
  @singleton
  String get appTile => '정식버전';
}

@module
abstract class AppDebugModule {
  @dev
  @singleton
  String get appTile => '개발버전';
}
