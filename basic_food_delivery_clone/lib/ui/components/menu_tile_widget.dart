import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../data/menu.dart';

class MenuTileWidget extends StatelessWidget {
  const MenuTileWidget({Key? key, required this.menus}) : super(key: key);

  final Menu menus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // height: 128,
          // color: Colors.grey.shade100,
          child: Stack(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    // height: 108,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: _buildHeightSizedBox(108),
                  ),
                ],
              ),
              Positioned(
                left: 152,
                top: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${menus.price}\$',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    _buildHeightSizedBox(8),
                    Text(menus.name),
                    _buildHeightSizedBox(8),
                    Text(
                      '${menus.weight}g . ${menus.calories}kcal',
                      style:
                          TextStyle(fontSize: 11, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        _buildHeightSizedBox(20)
      ],
    );
  }

  Widget _buildHeightSizedBox(double size) {
    return SizedBox(height: size);
  }
}
