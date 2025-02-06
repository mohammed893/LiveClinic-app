// core/models/botchatmodel.dart

class ChatMessage {
  String messageContent = "";
  bool isMessageFromMe = true;

  ChatMessage({
    required this.messageContent,
     required this.isMessageFromMe
     });

}