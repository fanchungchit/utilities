extension StringExtension on String {
  String get baseText =>
      toLowerCase().replaceAll(r'\W', '').replaceAll(r'\s+', '');
}
