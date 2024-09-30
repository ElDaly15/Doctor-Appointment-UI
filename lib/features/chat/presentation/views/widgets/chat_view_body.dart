import 'package:doctor_app/features/chat/presentation/views/widgets/chat_view_header.dart';
import 'package:doctor_app/features/chat/presentation/views/widgets/custom_sliver_list_for_doctors_chat.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: SizedBox(),
            ),
          ),
          SliverToBoxAdapter(
            child: ChatsViewHeader(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          CustomSliverListForChats(),
        ],
      ),
    );
  }
}
