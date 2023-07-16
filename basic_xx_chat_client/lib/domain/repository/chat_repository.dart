import '../model/message.dart';

abstract interface class ChatRepository {
  Stream<Message> getMessageStream();

  void sendMessage(Message message);
}
