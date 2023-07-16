import 'dart:async';

import 'package:basic_xx_chat_client/domain/repository/chat_repository.dart';
import 'package:flutter/material.dart';

import '../../domain/model/message.dart';

class MainViewModel with ChangeNotifier {
  final ChatRepository _chatRepository;

  List<Message> messages = [];

  StreamSubscription<Message>? _subscription;

  MainViewModel(this._chatRepository) {
    startMessageStream();
  }

  void startMessageStream() {
    if (_subscription?.isPaused ?? false) {
      _subscription?.resume();
      return;
    }

    _subscription = _chatRepository.getMessageStream().listen((message) {
      messages.add(message);
      notifyListeners();
    });
  }

  void sendMessage(String name, String message) {
    final chatMessage = Message(
      name: name,
      message: message,
    );

    _chatRepository.sendMessage(chatMessage);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
