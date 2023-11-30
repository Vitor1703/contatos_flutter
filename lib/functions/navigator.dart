import 'package:flutter/material.dart';

Future<dynamic> open(BuildContext context, Widget screen) async {
  return await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => screen));
}

void openWithoutBack(BuildContext context, Widget screen) async {
  await Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => screen));
}

void out(BuildContext context, {bool? value}) {
  if (Navigator.canPop(context)) {
    return Navigator.of(context).pop(value);
  }
}
