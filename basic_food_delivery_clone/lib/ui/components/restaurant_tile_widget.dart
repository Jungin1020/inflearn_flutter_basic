import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/restaurant.dart';
import '../main/detail_screen.dart';

class RestaurantTileWidget extends StatelessWidget {
  const RestaurantTileWidget({Key? key, required this.restaurant})
      : super(key: key);
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 128,
          // color: Colors.grey.shade100,
          child: Stack(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildHeightSizedBox(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      width: double.infinity,
                      // height: 108,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.05),
                              blurRadius: 3.0,
                              spreadRadius: 0.0,
                              offset: const Offset(5, 7),
                            )
                          ]),
                      child: _buildHeightSizedBox(108),
                    ),
                  ),
                ],
              ),
              _buildWidthSizedBox(152),
              Positioned(
                left: 152,
                bottom: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800),
                    ),
                    _buildHeightSizedBox(2),
                    Text(
                      restaurant.address,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500),
                    ),
                    _buildHeightSizedBox(14),
                    Text(
                      '${restaurant.distance} . ${restaurant.categoryDetail}',
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade300),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 40,
                top: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Hero(
                    tag: restaurant.id,
                    child: Image.network(
                      restaurant.imgUrl,
                      width: 100,
                      height: 112,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
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

  Widget _buildWidthSizedBox(double size) {
    return SizedBox(width: size);
  }
}
