import 'dart:async';

import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatefulWidget {
  final void Function(String query)? onTap;
  final void Function(String query)? onTextChange;

  const SearchTextFieldWidget({
    super.key,
    this.onTap,
    this.onTextChange,
  });

  @override
  State<SearchTextFieldWidget> createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchTextFieldWidget> {
  final controller = TextEditingController();

  // debounce를 적용할 시간 간격 (밀리초 단위)
  final debounceDuration = const Duration(milliseconds: 500);

  Timer? timer;

  // debounce 기능을 구현한 함수
  void debounce(Function() callback) {
    if (timer != null) {
      timer?.cancel();
    }

    timer = Timer(debounceDuration, () {
      callback();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: (query) {
        debounce(() => widget.onTextChange?.call(query));
      },
      decoration: InputDecoration(
        suffixIcon: IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {
              widget.onTap?.call(controller.text);
            }),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        labelText: 'Search images',
      ),
    );
  }
}
