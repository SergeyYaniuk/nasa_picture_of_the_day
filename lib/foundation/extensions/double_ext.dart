extension DoubleExt on double? {

  int toPercents() {
    if(this == null) return 0;
    return (this! * 100).round();
  }
}