import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var fontFn = GoogleFonts.montserrat;
final TextStyle APP_NAME =
    GoogleFonts.montserrat(color: Colors.white, fontSize: 60, fontWeight: FontWeight.w800);
final TextStyle H1 = TextStyle(
    fontFamily: 'Proxima Nova', fontSize: 24.0, color: Colors.black87, fontWeight: FontWeight.w800);
final TextStyle H2 = TextStyle(fontFamily: 'Proxima Nova', fontSize: 20.0, color: Colors.black87);
final TextStyle H3 = TextStyle(fontFamily: 'Proxima Nova', fontSize: 18.0, color: Colors.black87);
final TextStyle H4 = TextStyle(fontFamily: 'Proxima Nova', fontSize: 16.0, color: Colors.black87);
final TextStyle H5 = TextStyle(fontFamily: 'Proxima Nova', fontSize: 14.0, color: Colors.black87);
final TextStyle H6 = TextStyle(fontFamily: 'Proxima Nova', fontSize: 20.0, color: Colors.black87);
final TextStyle S1 = TextStyle(fontFamily: 'Proxima Nova', fontSize: 20.0, color: Colors.black45);
final TextStyle S2 = TextStyle(fontFamily: 'Proxima Nova', fontSize: 14.0, color: Colors.black45);
final TextStyle BODY1 =
    TextStyle(fontFamily: 'Proxima Nova', fontSize: 12.0, color: Colors.black87);
final TextStyle BUTTON1 =
    TextStyle(fontFamily: 'Proxima Nova', fontSize: 16, color: Colors.black45);

TextStyle WHITE(TextStyle t) {
  return t.copyWith(color: Colors.white);
}

TextStyle BOLD(TextStyle t) {
  return t.copyWith(fontWeight: FontWeight.w600);
}

TextStyle UNBOLD(TextStyle t) {
  return t.copyWith(fontWeight: FontWeight.normal);
}

TextStyle LIGHT(TextStyle t) {
  return t.copyWith(fontWeight: FontWeight.w300);
}
