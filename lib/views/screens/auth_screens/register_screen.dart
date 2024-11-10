import 'package:e_com/views/screens/auth_screens/login_screen.dart';
import 'package:e_com/views/widgets/auth/login_textform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create an Account',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                ),
              ),
              Text(
                'To Explore the world exclusives',
                style: GoogleFonts.lato(
                  fontSize: 14,
                  letterSpacing: 0.2,
                ),
              ),
              Image.asset(
                'assets/images/Illustration.png',
                width: 250,
                height: 250,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              const LoginTextform(
                labelText: 'enter your email',
                iconURL: 'assets/icons/email.png',
              ),
              const SizedBox(
                height: 12,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Name',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              const LoginTextform(
                labelText: 'enter your full name',
                iconURL: 'assets/icons/user.png',
              ),
              const SizedBox(
                height: 12,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              const LoginTextform(
                labelText: 'enter your password',
                iconURL: 'assets/icons/password.png',
                suffixIcon: true,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: 319,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFB010E1),
                      Color(0xFFE6E30F),
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 278,
                      top: 19,
                      child: Opacity(
                        opacity: 0.5,
                        child: Container(
                          width: 60,
                          height: 60,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 12,
                                color: const Color(0xFFB010E1),
                              ),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 311,
                      top: 36,
                      child: Opacity(
                        opacity: 0.3,
                        child: Container(
                          width: 5,
                          height: 5,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 281,
                      right: -10,
                      child: Opacity(
                        opacity: 0.3,
                        child: Container(
                          width: 20,
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Register',
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: const Color(0xFFB010E1),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
