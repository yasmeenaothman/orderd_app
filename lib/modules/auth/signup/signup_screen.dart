import 'package:flutter/material.dart';

import '../widgets/auth_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const AuthScreen(isSignUp: true,);
  }
}
