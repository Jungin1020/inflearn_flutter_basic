import 'package:basic_xx_rate_exchange_app/presentation/main_ui_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_event.dart';
import '../main_state.dart';
import '../main_view_model.dart';

class InputSelectMoneyCodeWidget extends StatefulWidget {
  const InputSelectMoneyCodeWidget({
    super.key,
    required this.viewModel,
    required this.state,
  });

  final MainViewModel viewModel;
  final MainState state;

  @override
  State<InputSelectMoneyCodeWidget> createState() =>
      _InputSelectMoneyCodeWidgetState();
}

class _InputSelectMoneyCodeWidgetState
    extends State<InputSelectMoneyCodeWidget> {
  final _baseMoneyController = TextEditingController();
  final _targetMoneyController = TextEditingController();
  FixedExtentScrollController _baseScrollController =
      FixedExtentScrollController();
  FixedExtentScrollController _targetScrollController =
      FixedExtentScrollController();

  @override
  void dispose() {
    _baseMoneyController.dispose();
    _targetMoneyController.dispose();
    _baseScrollController.dispose();
    _targetScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _baseMoneyController.text = widget.state.baseMoney.toString();
    _targetMoneyController.text = widget.state.targetMoney.toString();

    _baseMoneyController.selection = TextSelection.fromPosition(
        TextPosition(offset: _baseMoneyController.text.length));
    _targetMoneyController.selection = TextSelection.fromPosition(
        TextPosition(offset: _targetMoneyController.text.length));
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _baseMoneyController,
                keyboardType: TextInputType.number,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  widget.viewModel.onUiEvent(const MainUiEvent.isNotTapped());
                },
                onChanged: (value) {
                  widget.viewModel.onEvent(
                    MainEvent.inputBaseMoney(num.parse(value)),
                  );
                },
                onTap: () {
                  // _baseMoneyController.clear();
                  widget.viewModel.onUiEvent(const MainUiEvent.isTapped());
                },
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  suffixIcon: widget.state.isTapped
                      ? IconButton(
                          icon: Icon(
                            Icons.cancel,
                            size: 20,
                            color: Colors.grey.shade400,
                          ),
                          onPressed: () {
                            _baseMoneyController.clear();
                          },
                        )
                      : null,
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
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.state.baseCode,
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
                _baseScrollController.dispose();
                _baseScrollController = FixedExtentScrollController(
                    initialItem: widget.state.rates.keys
                        .toList()
                        .indexWhere((e) => e == widget.state.baseCode));
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    actions: [
                      SizedBox(
                        height: 350,
                        child: CupertinoPicker(
                          scrollController: _baseScrollController,
                          onSelectedItemChanged: (int index) {
                            widget.viewModel.onEvent(MainEvent.selectBaseCode(
                                widget.state.rates.keys.toList()[index]));
                          },
                          itemExtent: 64,
                          children: widget.state.rates.keys
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
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  widget.viewModel.onUiEvent(const MainUiEvent.isNotTapped());
                },
                onChanged: (value) {
                  widget.viewModel.onEvent(
                    MainEvent.inputTargetMoney(num.parse(value)),
                  );
                },
                onTap: () {
                  // _targetMoneyController.clear();
                  widget.viewModel.onUiEvent(const MainUiEvent.isTapped());
                },
                style: const TextStyle(fontSize: 16),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 15),
                  suffixIcon: widget.state.isTapped
                      ? IconButton(
                          icon: Icon(
                            Icons.cancel,
                            size: 20,
                            color: Colors.grey.shade400,
                          ),
                          onPressed: () {
                            _targetMoneyController.clear();
                          },
                        )
                      : null,
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
                width: MediaQuery.of(context).size.width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.state.targetCode,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              onTap: () {
                _targetScrollController.dispose();
                _targetScrollController = FixedExtentScrollController(
                    initialItem: widget.state.rates.keys
                        .toList()
                        .indexWhere((e) => e == widget.state.targetCode));
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => CupertinoActionSheet(
                    actions: [
                      SizedBox(
                        height: 350,
                        child: CupertinoPicker(
                          scrollController: _targetScrollController,
                          onSelectedItemChanged: (int index) {
                            widget.viewModel.onEvent(MainEvent.selectTargetCode(
                                widget.state.rates.keys.toList()[index]));
                          },
                          itemExtent: 64,
                          children: widget.state.rates.keys
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
