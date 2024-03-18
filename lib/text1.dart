import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text1 extends StatefulWidget {
  final String t;
  final double s;
  const Text1({super.key,required this.t,required this.s});


  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.t,
      style: GoogleFonts.lora(
        fontWeight: FontWeight.w500,
        fontSize: widget.s,
        height: 26 / widget.s, // Line height calculation: 26px / 20px
        letterSpacing: -0.2, // -1% of the font size
        color: Colors.black, // Adjust color as needed
      ),
    );

  }
}
