import 'package:flutter/material.dart';
import 'package:qr_code/core/utils/app_colors.dart';
import 'package:qr_code/core/utils/app_strings.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.35,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: -size.height * 0.22,
            left: -size.width * 0.04,
            child: Container(
              width: 342,
              height: 342,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor.withOpacity(0.3),
              ),
            ),
          ),
          Positioned(
            top: -size.height * 0.22,
            right: -size.width * 0.45,
            child: Container(
              width: 342,
              height: 342,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryColor.withOpacity(0.3),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.15,
            right: size.width * 0.4,
            child: const Text(
              AppStrings.logIn,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
