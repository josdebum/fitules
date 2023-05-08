

import 'package:flutter/material.dart';

class AppDecoration {
  static OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black ),
  );

  static final  otpInputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 20),
    border: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder,
  );
}
