import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextform extends StatefulWidget {
  final String iconURL;
  final String labelText;
  final bool suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;

  const AuthTextform({
    super.key,
    required this.iconURL,
    required this.labelText,
    this.suffixIcon = false,
    required this.validator,
    required this.keyboardType,
  });

  @override
  State<AuthTextform> createState() => _AuthTextformState();
}

class _AuthTextformState extends State<AuthTextform> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none),
        labelText: widget.labelText,
        labelStyle: GoogleFonts.nunitoSans(
          fontSize: 14,
          letterSpacing: 0.1,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
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
