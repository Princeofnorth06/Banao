import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Box1 extends StatelessWidget {
  const Box1({super.key,required this.t,required this.i,required this.h,required this.w});
  final String t;
  final String i;
  final double h;
  final double w;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color:const  Color(0xFF598BED),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Image.asset(i) ,
          const SizedBox(
            width: 15,
          ),
      Text(
        t,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          height: 20 / 14, // Line height calculation: 20px / 14px
          letterSpacing: -0.5, // -0.5% of the font size
        ),
      ),
      ],),
    )
    ;
  }
}
