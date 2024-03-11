enum TechnologiesType {
  iphone,
  android,
  mac,
  windows,
}

extension TechnologiesTypeExtension on TechnologiesType {
  String get image {
    switch (this) {
      case TechnologiesType.iphone:
        return 'assets/images/iphone.png';
      case TechnologiesType.android:
        return 'assets/images/android.png';
      case TechnologiesType.mac:
        return 'assets/images/mac.png';
      case TechnologiesType.windows:
        return 'assets/images/windows.png';
    }
  }

  String get name {
    switch (this) {
      case TechnologiesType.iphone:
        return 'IOS';
      case TechnologiesType.android:
        return 'Android';
      case TechnologiesType.mac:
        return 'Mac-OS';
      case TechnologiesType.windows:
        return 'Windows';
    }
  }
}
