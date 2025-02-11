enum NetworkConnectionStatus {
  none,
  mobile,
  wifi,
  unknown,
}

///
/// A extension to check whethesr user has connection or not.
///
extension HasConnection on NetworkConnectionStatus {
  bool get hasConnection {
    switch (this) {
      case NetworkConnectionStatus.mobile:
      case NetworkConnectionStatus.wifi:
        return true;
      case NetworkConnectionStatus.unknown:
      case NetworkConnectionStatus.none:
        return false;
    }
  }
}
