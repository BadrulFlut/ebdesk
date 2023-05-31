// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:ebdeskgpt/module/chat/widget/button_opsi.dart';
import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';

class MessageWidgetChat extends StatefulWidget {
  bool isMe;
  MessageWidgetChat({required this.isMe, Key? key}) : super(key: key);

  @override
  State<MessageWidgetChat> createState() => _MessageWidgetChatState();
}

class _MessageWidgetChatState extends State<MessageWidgetChat> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    if (widget.isMe) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 274,
            margin: const EdgeInsets.only(right: 20, bottom: 20),
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
            decoration: BoxDecoration(
                color: primary, borderRadius: BorderRadius.circular(10)),
            child: textNunito(
                "Apa chart yang bagus untuk kateorisme dashboard?",
                14,
                Colors.white,
                FontWeight.w400),
          )
        ],
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onLongPress: () {
              setState(() {
                isMenuOpen = !isMenuOpen;
              });
            },
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                Container(
                  width: 274,
                  margin: const EdgeInsets.only(left: 20, bottom: 20),
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 12, bottom: 12),
                  decoration: BoxDecoration(
                      color: hintTextColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/icons/logo_icon.png"))),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: Container(
                          child: textNunito(
                              "Ada banyak jenis chart yang dapat digunakan untuk kategorisasi data dalam sebuah dashboard. Namun, beberapa jenis chart yang paling umum digunakan untuk kategorisasi dashboard adalah: Bar Chart: Bar chart sangat berguna untuk membandingkan nilai antara beberapa kategori. Grafik ini cocok untuk menggambarkan data nominal dan ordinal. Pie Chart: Pie chart cocok untuk menunjukkan proporsi kategori dalam satu kelompok data. Jika Anda ingin menunjukkan bagaimana sekelompok data terbagi, ini bisa menjadi pilihan yang baik.",
                              14,
                              Colors.black,
                              FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                isMenuOpen
                    ? Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          width: 140,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ButtonOpsi(button: () {}, title: "Copy"),
                              const SizedBox(
                                height: 24.0,
                              ),
                              ButtonOpsi(button: () {}, title: "Favorite"),
                              const SizedBox(
                                height: 24.0,
                              ),
                              ButtonOpsi(button: () {}, title: "Select"),
                              const SizedBox(
                                height: 24.0,
                              ),
                              ButtonOpsi(button: () {}, title: "Delete")
                            ],
                          ),
                        ))
                    : const SizedBox(),
              ],
            ),
          )
        ],
      );
    }
  }
}
