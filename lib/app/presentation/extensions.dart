extension DateTimeExtension on DateTime {
  String toStringDate() {
    return '${this.year}/${_twoDigits(this.month)}/${_twoDigits(this.day)}';
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');
}
