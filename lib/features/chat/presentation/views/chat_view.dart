import 'package:doctor_app/features/chat/presentation/views/widgets/chat_view_body.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: ChatViewBody(),
    );
  }
}
