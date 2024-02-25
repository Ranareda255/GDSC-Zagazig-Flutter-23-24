void main() {
  String x = "Rana Reda";
  print(removeWhitespace(x));
}

String removeWhitespace(String s) {
  return s.replaceAll(RegExp(r"\s"), "");
}