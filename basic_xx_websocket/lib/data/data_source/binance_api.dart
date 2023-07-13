import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

import '../../domain/model/price.dart';

class BinanceApi {
  final _wsUrl = Uri.parse('wss://fstream.binance.com/ws/bnbusdt@aggTrade');

  Stream<Price> getPriceStream() {
    final channel = WebSocketChannel.connect(_wsUrl);
    return channel.stream.map((e) => Price.fromJson(jsonDecode(e)));
  }
}
