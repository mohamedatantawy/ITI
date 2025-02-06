class Smipletime {
  final int? hours;
  final int? minutes;
  final int? seconds;
  final int? nanosecond;

  Smipletime({this.hours, this.minutes, this.seconds, this.nanosecond});
  int tosecondofday() {
    return (((hours??0) * 3600) + ((minutes??0)* 60) + (seconds??0));
  }

  int tonanosecondofday() {
    return (tosecondofday() * 1000 * 1000 * 1000 + (nanosecond ?? 0));
  }
}

void main() {
  Smipletime noon = Smipletime(minutes: 12);
  print(noon.tosecondofday());
    print(noon.tonanosecondofday());
}
