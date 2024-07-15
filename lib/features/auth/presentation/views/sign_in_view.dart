import 'package:flutter/material.dart';
import 'package:qr_code/features/auth/presentation/widgets/auth_header.dart';
import 'package:qr_code/features/auth/presentation/widgets/sign_in_form.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthHeader(),
            // const SizedBox(height: ),
            SignInForm()
          ],
        ),
      ),
    );
  }
}
