import 'package:basic_food_delivery_clone/ui/components/detail_about_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/detail_menu_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // DetailAppBarWidget(restaurant: restaurant),
            _buildSizedBox(28),
            const DetailAboutWidget(),
            _buildSizedBox(28),
            const DetailMenuWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildSizedBox(double size) {
    return SizedBox(height: size);
  }
}
