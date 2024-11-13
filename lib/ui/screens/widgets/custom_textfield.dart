import 'package:flutter/material.dart';
import 'package:pam_proyek/constants.dart';

class CustomTextfield extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;
  final TextEditingController controller; // Tambahkan parameter controller

  const CustomTextfield({
    super.key,
    required this.icon,
    required this.obscureText,
    required this.hintText,
    required this.controller, // Tambahkan parameter controller
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller, // Gunakan controller di sini
      obscureText: obscureText,
      style: TextStyle(
        color: Constants.blackColor,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          icon,
          color: Constants.blackColor.withOpacity(.3),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Constants.blackColor.withOpacity(.5)),
      ),
      cursorColor: Constants.blackColor.withOpacity(.5),
    );
  }
}
