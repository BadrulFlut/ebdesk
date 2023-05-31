import 'package:ebdeskgpt/module/chat/widget/menu_ai.dart';
import 'package:ebdeskgpt/module/chat/widget/menu_chat_history.dart';
import 'package:ebdeskgpt/module/chat/widget/message_widget_chat.dart';
import 'package:ebdeskgpt/module/chat/widget/show_bottom_menu_ai.dart';
import 'package:ebdeskgpt/module/chat/widget/text_field_search.dart';
import 'package:ebdeskgpt/module/chat/widget/widget_show_model_bottom.dart';

import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:flutter/material.dart';
import 'package:ebdeskgpt/core.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/chat_controller.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  Widget build(context, ChatController controller) {
    controller.view = this;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          width: w,
          height: h,
          padding: const EdgeInsets.only(top: 56),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: w,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xFFECF1EC)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/icons/backbutton.png"))),
                      ),
                    ),
                    textNunito("Chat", 20, Colors.black, FontWeight.w600),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (context) {
                            return WidgetShowModelBottomChat(
                              w: w,
                              controller: controller,
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icons/clock.png"))),
                      ),
                    )
                  ],
                ),
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     ListView.builder(
              //       shrinkWrap: true,
              //       itemCount: 3,
              //       itemBuilder: (context, index) {
              //         return MessageWidgetChat(isMe: true);
              //       },
              //     )
              //   ],
              // ),

              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 20),
                controller: ScrollController(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MessageWidgetChat(
                      isMe: true,
                    ),
                    MessageWidgetChat(isMe: false),
                    MessageWidgetChat(isMe: true)
                  ],
                ),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: primary,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/lamp.png"))),
          )),
      bottomNavigationBar: Container(
        width: w,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 10))
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 41,
              width: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6)),
                  border: Border.all(color: const Color(0xFFEAEAEA))),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return ShowBottomMenuAi(w: w);
                    },
                  );
                },
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/ebdesk_green.png"))),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 41,
                width: 300,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(6)),
                    border: Border.all(color: const Color(0xFFEAEAEA))),
                child: TextFormField(
                  // controller: ,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icons/send.png"))),
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(left: 10, right: 10),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 16,
                height: 16,
                alignment: Alignment.centerLeft,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icons/refresh.png"))),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<ChatView> createState() => ChatController();
}
