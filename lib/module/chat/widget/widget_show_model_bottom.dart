import 'package:ebdeskgpt/core.dart';
import 'package:ebdeskgpt/module/chat/widget/menu_chat_history.dart';
import 'package:ebdeskgpt/module/chat/widget/text_field_search.dart';
import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:flutter/material.dart';

import '../../../util/default_promps/text_nunito.dart';

class WidgetShowModelBottomChat extends StatefulWidget {
  ChatController controller;
  WidgetShowModelBottomChat({
    super.key,
    required this.controller,
    required this.w,
  });

  final double w;

  @override
  State<WidgetShowModelBottomChat> createState() =>
      _WidgetShowModelBottomChatState();
}

class _WidgetShowModelBottomChatState extends State<WidgetShowModelBottomChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.w,
      height: 595,
      padding: const EdgeInsets.only(top: 12),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 5,
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            height: 60,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 1, color: Colors.grey.withOpacity(0.2)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textNunito("Chat History", 16, hintTextColor, FontWeight.w500),
                const SizedBox(
                  width: 4.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: primary,
                        size: 16.0,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      textNunito("New Chat", 14, primary, FontWeight.w500)
                    ],
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    child: TextFieldSearchChat(w: widget.w)),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child:
                      textNunito("Recent", 12, hintTextColor, FontWeight.w500),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ListView.builder(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  itemCount: widget.controller.chatHistory.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: MenuChatHistory(
                          text: widget.controller.chatHistory[index]),
                    );
                  },
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: textNunito(
                    "Previous 7 days", 12, hintTextColor, FontWeight.w500),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListView.builder(
                padding: const EdgeInsets.only(left: 20, right: 20),
                itemCount: widget.controller.chatHistory.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: MenuChatHistory(
                        text: widget.controller.chatHistory[index]),
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
