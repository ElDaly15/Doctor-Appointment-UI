import 'package:doctor_app/features/chat/presentation/views/widgets/chat_item.dart';
import 'package:flutter/material.dart';

class CustomSliverListForChats extends StatelessWidget {
  const CustomSliverListForChats({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: index == 0
              ? const EdgeInsets.only(top: 0, bottom: 8)
              : const EdgeInsets.symmetric(vertical: 8),
          child: const ChatItem(),
        );
      }, childCount: 10),
    );
  }
}
