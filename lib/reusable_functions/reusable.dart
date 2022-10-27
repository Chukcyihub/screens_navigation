import 'package:flutter/material.dart';

from(ctx, Widget placeholder) {
  return Navigator.push(
    ctx,
    MaterialPageRoute(
      builder: (context) {
        return placeholder;
      },
    ),
  );
}
