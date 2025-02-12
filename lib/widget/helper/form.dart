import 'package:flutter/material.dart';
import '../../core/service/media_query.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool obscure;
  final FormFieldValidator<String>? valid;
  final TextEditingController controller;
  final FocusNode focusNode;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.obscure,
    required this.valid,
    required this.focusNode,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQueryUtil.screenWidth * 0.02),
            child: TextFormField(
              controller: controller,
              validator: valid,
              obscureText: obscure,
              focusNode: focusNode,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
