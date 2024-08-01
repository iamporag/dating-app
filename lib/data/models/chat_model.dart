import 'package:dating_app/data/models/message_model.dart';

class ChatModel {
  final int id;
  // final List<ProfileModel> participant;
  final MessageModel lastMessage;
  final List<MessageModel> conversations;

  ChatModel({required this.id, 
  // required this.participant,
   required this.lastMessage, required this.conversations});
}