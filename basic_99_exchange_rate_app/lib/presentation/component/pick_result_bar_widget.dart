import 'package:basic_99_exchange/presentation/component/build_country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickResultBarWidget extends StatelessWidget {
  final Function(String country) onPicked;

  const PickResultBarWidget({
    super.key,
    required this.countries,
    required this.country,
    required this.onPicked,
  });

  final List<String> countries;

  // final _controller = TextEditingController(text: 'USD');
  final String country;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: Color(int.parse('0xFFF3F6FC')),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(0),
                bottomLeft: Radius.circular(4),
              ),
            ),
          ),
        ),
        GestureDetector(
          child: Container(
            child: Row(
              children: [
                Text(
                  country,
                  style: const TextStyle(fontSize: 16),
                ),
                // SizedBox(
                //   width: MediaQuery.of(context).size.width * 0.3,
                //   child: TextField(
                //     textAlign: TextAlign.end,
                //     controller: _controller,
                //     decoration: InputDecoration(border: InputBorder.none),
                //     showCursor: false,
                //   ),
                // ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          onTap: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) => CupertinoActionSheet(
                actions: [
                  buildCountryPicker(
                    countries,
                    (country) => onPicked(country),
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: CupertinoColors.activeBlue),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
