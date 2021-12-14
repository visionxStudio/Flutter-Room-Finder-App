class ImageAsset {
  ImageAsset._();
  static const String _base = 'assets/images';
  static const String applogo = '$_base/logo.png';

  // dialog box
  static const String emailSent = "$_base/email.png";
  static const String error = "$_base/error.png";
}

class IconAsset {
  static const String _base = 'assets/images/icons';
  static const String _social = '/social';

  // For Social Icons
  static const String facebook = '$_base$_social/facebook.png';
  static const String google = '$_base$_social/google.png';
}
