import 'package:contatos_flutter/configs/color_config.dart';
import 'package:contatos_flutter/configs/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

Slidable getSlidable({List<Widget>? endAction, required Widget child}) {
  return Slidable(
    endActionPane: ActionPane(
      motion: const ScrollMotion(),
      children: endAction ?? [],
    ),
    child: child,
  );
}

SlidableAction getSlidableActionExcluir(BuildContext context, {required Function onPressedExcluir}) {
  return SlidableAction(
    onPressed: (value) => {},
    backgroundColor: Colors.red,
    foregroundColor: ColorConfig.white,
    icon: Icons.delete,
    label: 'Excluir',
    padding: const EdgeInsets.all(SizeConfig.spacingSmall),
    borderRadius: BorderRadius.circular(SizeConfig.radiusDefault),
  );
}

SlidableAction getSlidableActionEditar({void Function(BuildContext)? onPressed}) {
  return SlidableAction(
    onPressed: onPressed,
    backgroundColor: ColorConfig.primary,
    foregroundColor: ColorConfig.white,
    icon: Icons.edit,
    label: 'Editar',
    padding: const EdgeInsets.all(SizeConfig.spacingSmall),
    borderRadius: BorderRadius.circular(SizeConfig.radiusDefault),
  );
}
