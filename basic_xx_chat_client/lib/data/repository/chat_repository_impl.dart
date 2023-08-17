import '../../domain/model/message.dart';
import '../../domain/repository/chat_repository.dart';
import '../data_resource/chat_api.dart';

// mapper의 역할도 포함된 repository

class ChatRepositoryImpl implements ChatRepository {
  final _api = ChatApi();

  @override
  Stream<Message> getMessageStream() {
    return _api
        .getMessageStream()
        .map((messageJson) => Message.fromJson(messageJson));
  }

  @override
  void sendMessage(Message message) {
    _api.sendMessage(message.toJson());
  }
}
