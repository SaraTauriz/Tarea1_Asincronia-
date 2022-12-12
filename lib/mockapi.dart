import 'dart:math';

class MockApi {
  /// Singleton pattern used here.
  static final MockApi _mockapi = MockApi._internal();

  factory MockApi() {
    return _mockapi;
  }

  MockApi._internal();

  ///
  /// Private method to get an integer between 1 and 100 after some delay.
  ///
  Future<int> _getInteger(int delayInSeconds) {
    return Future.delayed(
      Duration(seconds: delayInSeconds),
      () => Random().nextInt(50),
    );
  }

  ///
  /// Public API starts here :)
  ///

  /// Gets a random integer between 1 and 100 very quickly
  Future<int> getEnergiaInteger() {
    return _getInteger(10);
  }

  /// Gets a random integer between 1 and 100 not that quickly
  Future<int> getVelocidadInteger() {
    return _getInteger(10);
  }

  /// Gets a random integer between 1 and 100 really slowly
  Future<int> getPersonasInteger() {
    return _getInteger(10);
  }
}
