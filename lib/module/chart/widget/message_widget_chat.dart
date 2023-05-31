// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:ebdeskgpt/core.dart';
import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MessageWidgetChat1 extends StatelessWidget {
  double w;
  bool isMe;
  ChartController controller;
  Widget widget;
  String chat1;
  String chat2;
  MessageWidgetChat1(
      {required this.widget,
      required this.controller,
      required this.w,
      required this.isMe,
      required this.chat1,
      required this.chat2,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 274,
            margin: const EdgeInsets.only(right: 20, bottom: 18),
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
            decoration: BoxDecoration(
                color: primary, borderRadius: BorderRadius.circular(10)),
            child: textNunito(chat1, 14, Colors.white, FontWeight.w400),
          )
        ],
      );
    } else {
      return Column(
        children: [
          Row(
            children: [
              Container(
                width: 274,
                margin: const EdgeInsets.only(left: 20, bottom: 18),
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
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/logo_icon.png"))),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        child: textNunito(
                            chat2, 14, Colors.black, FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          widget
        ],
      );
    }
  }
}
