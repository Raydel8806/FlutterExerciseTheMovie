class StringLanguage {
  final String value;

  const StringLanguage(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StringLanguage &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
