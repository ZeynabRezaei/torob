import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter/material.dart' hide Text;

class PopUp {
  BuildContext context;
  Widget body;
  Color color;
  bool isDismissible;

  PopUp(this.context, {required this.body, required this.color, required this.isDismissible}) {
    showDialog(
        context: context,
        barrierDismissible: isDismissible,
        builder: (BuildContext context) {
          return _getBody();
        });
  }

  _getBody() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15.0)),
              child: SingleChildScrollView(
                child: body,
              ),
            ),
          )),
    );
  }
}
