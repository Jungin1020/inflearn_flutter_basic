import 'package:flutter/material.dart';

import '../../data/menu.dart';
import 'menu_tile_widget.dart';

class MenuListWidget extends StatelessWidget {
  const MenuListWidget({Key? key, required this.menus}) : super(key: key);
  final List<Menu> menus;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: menus.map((menu) => MenuTileWidget(menus: menu)).toList());
  }
}
