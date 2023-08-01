import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_event.dart';
import '../main_state.dart';
import '../main_view_model.dart';

class InputSelectMoneyCodeWidget extends StatelessWidget {
  const InputSelectMoneyCodeWidget({
    super.key,
    required TextEditingController baseMoneyController,
    required TextEditingController targetMoneyController,
    required this.viewModel,
    required this.state,
  })  : _baseMoneyController = baseMoneyController,
        _targetMoneyController = targetMoneyController;

  final TextEditingController _baseMoneyController;
  final TextEditingController _targetMoneyController;
  final MainViewModel viewModel;
  final MainState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _baseMoneyController,
                keyboardType: TextInputType.number,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                onChanged: (value) {
                  viewModel.onEvent(
                    MainEvent.inputBaseMoney(num.parse(value)),
                  );
                },
                onTap: () {
                  _baseMoneyController.clear();
                },
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 15),
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
            GestureDetector(
              child: SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      state.baseCode,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              onTap: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    actions: [
                      SizedBox(
                        height: 350,
                        child: CupertinoPicker(
                          onSelectedItemChanged: (int index) {
                            viewModel.onEvent(MainEvent.selectBaseCode(
                                state.rates.keys.toList()[index]));
                          },
                          itemExtent: 64,
                          children: state.rates.keys
                              .map(
                                (con) => Center(child: Text(con)),
                              )
                              .toList(),
                        ),
                      )
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
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _targetMoneyController,
                keyboardType: TextInputType.number,
                onTapOutside: (event) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
                onChanged: (value) {
                  viewModel.onEvent(
                    MainEvent.inputTargetMoney(num.parse(value)),
                  );
                },
                onTap: () {
                  _targetMoneyController.clear();
                },
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 15),
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
            GestureDetector(
              child: SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      state.targetCode,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              onTap: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    actions: [
                      SizedBox(
                        height: 350,
                        child: CupertinoPicker(
                          onSelectedItemChanged: (int index) {
                            viewModel.onEvent(MainEvent.selectTargetCode(
                                state.rates.keys.toList()[index]));
                          },
                          itemExtent: 64,
                          children: state.rates.keys
                              .map(
                                (con) => Center(child: Text(con)),
                              )
                              .toList(),
                        ),
                      )
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
            ),
          ],
        ),
      ],
    );
  }
}
