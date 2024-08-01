class MessageModel {
  final int id;
  final int senderId;
  final int receiverId;
  final String message;
  final String timeStamp;

  MessageModel({required this.id, required this.senderId, required this.receiverId, required this.message, required this.timeStamp});
}