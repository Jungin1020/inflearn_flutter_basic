import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_event.dart';
import '../main_state.dart';
import '../main_view_model.dart';

class InputSelectMoneyCodeWidget extends StatelessWidget {
  const InputSelectMoneyCodeWidget({
    super.key,
    required TextEditingController baseMoneyController,
    required this.viewModel,
    required this.state,
  }) : _baseMoneyController = baseMoneyController;

  final TextEditingController _baseMoneyController;
  final MainViewModel viewModel;
  final MainState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _baseMoneyController,
            keyboardType: TextInputType.number,
            onSubmitted: (value) {
              viewModel.onEvent(
                MainEvent.inputBaseMoney(num.parse(value)),
              );
            },
            style: const TextStyle(fontSize: 16),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(4),
                ),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Color(int.parse('0xFFF3F6FC')),
            ),
          ),
        ),
        SizedBox(
          width: 100,
          child: Align(
            alignment: Alignment.centerRight,
            child: DropdownButton<String>(
              value: state.baseCode,
              icon: const Icon(Icons.expand_more),
              elevation: 16,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              underline: Container(
                height: 0,
                color: Colors.transparent,
              ),
              onChanged: (String? value) {
                viewModel.onEvent(MainEvent.selectBaseCode(value!));
              },
              items: state.rates.keys
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
