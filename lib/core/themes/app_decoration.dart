

import 'package:flutter/material.dart';

class AppDecoration {
  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black ),
  );

  static final  otpInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 20),
    border: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder,
  );
}
