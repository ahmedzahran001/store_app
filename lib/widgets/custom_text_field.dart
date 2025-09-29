import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.hintText,
      this.inputType,
      this.onChanged,
      this.obscureText = false});
  final String? hintText;
  final TextInputType? inputType;
  final Function(String)? onChanged;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obscureText!,
      onChanged: onChanged,
      style: const TextStyle(
        color: Color(0xFF99968F), // تغيير لون النص إلى الأبيض
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF27241A),
        hintText: hintText,
        hintStyle: const TextStyle(
          height: 1,
          color: Color(0xFF99968F),
          // fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 2,
            // color: const Color(0xFFFFB800),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            width: 2,
            // color: const Color(0xFF7F7C76), // تغيير لون البوردر أثناء الكتابة إلى الأسود
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
              // color: Colors.white,
              ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
