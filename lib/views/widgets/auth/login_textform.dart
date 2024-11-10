import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextform extends StatefulWidget {
  final String iconURL;
  final String labelText;
  final bool suffixIcon;

  const LoginTextform(
      {super.key,
      required this.iconURL,
      required this.labelText,
      this.suffixIcon = false});

  @override
  State<LoginTextform> createState() => _LoginTextformState();
}

class _LoginTextformState extends State<LoginTextform> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        labelText: widget.labelText,
        labelStyle: GoogleFonts.nunitoSans(
          fontSize: 14,
          letterSpacing: 0.1,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            widget.iconURL,
            width: 20,
            height: 20,
            color: const Color(0xFFB010E1),
          ),
        ),
        suffixIcon: widget.suffixIcon
            ? const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.visibility_off,
                  size: 20,
                  color: Color(0xFFB010E1),
                ),
              )
            : null,
      ),
    );
  }
}
