import 'dart:async';

import 'package:flutter/material.dart';

class SearchTextFieldWidget extends StatefulWidget {
  final void Function(String query)? onTap;
  final void Function(String query)? onTextChange;
  final void Function(Function callback)? debounce;
  // final bool? isDebounced;

  const SearchTextFieldWidget({
    super.key,
    this.onTap,
    this.onTextChange,
    this.debounce,
    //this.isDebounced,
  });

  @override
  State<SearchTextFieldWidget> createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchTextFieldWidget> {
  final controller = TextEditingController();

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
        // if (isDebounced == true || isDebounced == null) {
        //   widget.debounce.call(() => widget.onTextChange?.call(query));
        // }
        widget.onTextChange?.call(query);
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
