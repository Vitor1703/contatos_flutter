import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';

Widget spacingVertical({double? spacing}) => SizedBox(height: spacing ?? SizeConfig.spacingDefault);

Widget spacingHorizontal({double? spacing}) => SizedBox(width: spacing ?? SizeConfig.spacingDefault);