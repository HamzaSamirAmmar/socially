abstract class Failure {
  String get message;
}

class ServerFailure extends Failure {
  @override
  String get message => 'Something went wrong. Please try again later.';
}

class ConnectionFailure extends Failure {
  @override
  String get message => 'Please check your internet connection.';
}

class UnauthorizedFailure extends Failure {
  @override
  String get message => 'Unauthorized. Please log in again.';
}

class CacheFailure extends Failure {
  @override
  String get message => 'Failed to load data. Please try again later.';
}
