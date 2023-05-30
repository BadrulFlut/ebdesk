import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:flutter/material.dart';

class ShowModelBottomWidget extends StatelessWidget {
  double height;
  String title;
  Widget widget;
  VoidCallback cancel;
  VoidCallback save;
  ShowModelBottomWidget({
    required this.height,
    required this.title,
    required this.widget,
    required this.cancel,
    required this.save,
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: height,
      child: Column(children: [
        const SizedBox(
          height: 12.0,
        ),
        Container(
          width: 60,
          height: 5,
          decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(20)),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [textNunito(title, 16, hintTextColor, FontWeight.w500)],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Container(
          width: w,
          height: 1,
          color: const Color(0xFFECF1EC),
        ),
        const SizedBox(
          height: 20.0,
        ),
        //----Widget----//
        widget,
        //----Widget----//
        const SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset(0, 1),
                    color: Colors.grey.withOpacity(0.2))
              ], color: Colors.white),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFECF1EC),
                      ),
                      onPressed: cancel,
                      child: textNunito("Cancel", 14, const Color(0xFF00120E),
                          FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                      ),
                      onPressed: save,
                      child:
                          textNunito("Save", 14, Colors.white, FontWeight.w500),
                    ),
                  ),
                ],
              )),
        )
      ]),
    );
  }
}
