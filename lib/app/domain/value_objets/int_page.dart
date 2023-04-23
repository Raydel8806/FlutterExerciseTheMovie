class IntPage {
  final int value;

  const IntPage(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IntPage &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
