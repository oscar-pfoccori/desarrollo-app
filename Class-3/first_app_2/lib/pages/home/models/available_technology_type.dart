enum AvailableTechnologyType {
  iphone,
  android,
  macos,
  windows,
}

extension AvailableTechnologyTypeExtension on AvailableTechnologyType {
  String get imageName {
    switch (this) {
      case AvailableTechnologyType.iphone:
        return 'assets/images/iphone.png';
      case AvailableTechnologyType.android:
        return 'assets/images/android.png';
      case AvailableTechnologyType.macos:
        return 'assets/images/mac.png';
      case AvailableTechnologyType.windows:
        return 'assets/images/windows.png';
    }
  }

  String get title {
    switch (this) {
      case AvailableTechnologyType.iphone:
        return 'Iphone';
      case AvailableTechnologyType.android:
        return 'Android';
      case AvailableTechnologyType.macos:
        return 'Mac-os';
      case AvailableTechnologyType.windows:
        return 'Windows';
    }
  }
}
