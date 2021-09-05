import 'package:flutter/material.dart';

/// This is a paragraph of regular text.

class TextStyles {
//#region
  static TextStyle displaySelectBox(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
          fontFamily: 'Roboto',
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        );
  }
//#endregion
}
