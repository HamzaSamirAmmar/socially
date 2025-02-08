import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../logger/socially_logger.dart';
import 'connection_status.dart';

///
/// A class to create instance of connectivity package
/// and use it to listen to connection change.
///
@module
abstract class ConnectionServiceRegister {
  final Connectivity _connectivity = Connectivity();

  @preResolve
  Future<ConnectionService> create() async {
    final currentStatus = (await _connectivity.checkConnectivity()).status;
    final connectionController = BehaviorSubject.seeded(currentStatus);
    final connectivityStream = _connectivity.onConnectivityChanged;

    sLogger.d("[Network] initial connection status: $currentStatus");

    connectivityStream.listen((connectivityResult) {
      final status = connectivityResult.status;

      sLogger.d(
        "[Network] connection status: $status, result: $connectivityResult",
      );
    });

    return ConnectionService(connectionController);
  }
}

///
/// A service to provide connection status.
///
class ConnectionService {
  ConnectionService(this._connectionController);

  final BehaviorSubject<NetworkConnectionStatus> _connectionController;

  NetworkConnectionStatus get status => _connectionController.value;

  Stream<NetworkConnectionStatus> get connectionStream =>
      _connectionController.stream;
}

extension _Status on ConnectivityResult {
  NetworkConnectionStatus get status {
    switch (this) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.vpn:
        return NetworkConnectionStatus.wifi;
      case ConnectivityResult.mobile:
        return NetworkConnectionStatus.mobile;
      case ConnectivityResult.none:
        return NetworkConnectionStatus.none;
      case ConnectivityResult.bluetooth:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.other:
        return NetworkConnectionStatus.unknown;
    }
  }
}
