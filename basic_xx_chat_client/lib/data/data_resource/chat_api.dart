import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

class ChatApi {
  final _wsUrl = Uri.parse('ws://0.0.0.0:4040/ws');
  late WebSocketChannel _channel;

  ChatApi() {
    _channel = WebSocketChannel.connect(_wsUrl);
  }

  Stream<Map<String, dynamic>> getMessageStream() {
    return _channel.stream.map((event) => jsonDecode(event));
  }

  void sendMessage(Map<String, dynamic> message) {
    _channel.sink.add(jsonEncode(message));
  }
}
