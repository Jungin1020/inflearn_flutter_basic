import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),
        child: Row(
          children: [
            _buildWidthSizedBox(16),
            Icon(Icons.search_outlined, color: Colors.grey.shade500),
            _buildWidthSizedBox(8),
            Text(
              'Search',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade500),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildWidthSizedBox(double size) {
    return SizedBox(width: size);
  }
}
