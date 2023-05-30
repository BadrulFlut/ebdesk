import 'package:ebdeskgpt/module/profile/widget/show_model_bottom_widget.dart';
import 'package:ebdeskgpt/module/profile/widget/widget_bottom_sheet.dart';
import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_nunito.dart';
import 'package:ebdeskgpt/util/default_promps/text_robot.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ebdeskgpt/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 56, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/backbutton.png"))),
                ),
              ),
              const Spacer(),
              textNunito(
                  "Profile", 20, const Color(0xFF00120E), FontWeight.w600),
              const Spacer(),
              const SizedBox(
                width: 24.0,
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              // image: DecorationImage(image: NetworkImage(""))
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          textNunito("Profile Name", 20, Colors.black, FontWeight.w700),
          const SizedBox(
            height: 4.0,
          ),
          textNunito("Please fill in the true information", 12, hintTextColor,
              FontWeight.w400),
          const SizedBox(
            height: 24.0,
          ),

          //Name//

          Container(
            width: w,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: const Color(0xFFECF1EC))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textNunito("Name", 14, hintTextColor, FontWeight.w400),
                    const SizedBox(
                      height: 4.0,
                    ),
                    textNunito(
                        "Ronald Koeman", 14, Colors.black, FontWeight.w600),
                  ],
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return ShowModelBottomWidget(
                              height: 252,
                              title: "Edit Name",
                              widget: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textNunito("Name", 14, Colors.black,
                                        FontWeight.w500)
                                  ],
                                ),
                              ),
                              cancel: () {},
                              save: () {},
                              w: w);
                        });
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/icons/edit.png"))),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

          //Email//

          Container(
            width: w,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: const Color(0xFFECF1EC))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textNunito("Email", 14, hintTextColor, FontWeight.w400),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/icons/google.png"))),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textNunito("ronaldkoeman@gmail.com", 14,
                                Colors.black, FontWeight.w600),
                            const SizedBox(
                              height: 4.0,
                            ),
                            textNunito("Connected with google account", 14,
                                hintTextColor, FontWeight.w400)
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/icons/link.png"))),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        textNunito("Disconnect account", 14,
                            const Color(0xFFE04545), FontWeight.w500)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

          //Password//

          Container(
            width: w,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: const Color(0xFFECF1EC))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textNunito("Password", 14, hintTextColor, FontWeight.w400),
                    const SizedBox(
                      height: 4.0,
                    ),
                    textNunito(
                        "* * * * * * *", 14, Colors.black, FontWeight.w600),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/icons/edit.png"))),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

          //Position//

          Container(
            width: w,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: const Color(0xFFECF1EC))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textNunito("Position", 14, hintTextColor, FontWeight.w400),
                    const SizedBox(
                      height: 4.0,
                    ),
                    textNunito("Staff FE", 14, Colors.black, FontWeight.w600),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),

          //Contact//

          Container(
            width: w,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: const Color(0xFFECF1EC))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textNunito("Contact", 14, hintTextColor, FontWeight.w400),
                    const SizedBox(
                      height: 4.0,
                    ),
                    textNunito(
                        "permata_hijau12", 14, Colors.black, FontWeight.w600),
                    const SizedBox(
                      height: 8.0,
                    ),
                    textNunito("Telegram Username", 12, hintTextColor,
                        FontWeight.w400),
                    const SizedBox(
                      height: 20.0,
                    ),
                    textNunito(
                        "+622109234232", 14, Colors.black, FontWeight.w600),
                    const SizedBox(
                      height: 8.0,
                    ),
                    textNunito(
                        "Phone Number", 12, hintTextColor, FontWeight.w400),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/icons/edit.png"))),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          //Logout//

          Container(
            width: w,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(width: 1, color: const Color(0xFFECF1EC))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/logout.png"))),
                ),
                const SizedBox(
                  width: 6.0,
                ),
                textNunito(
                    "Logout", 14, const Color(0xFFE04545), FontWeight.w400)
              ],
            ),
          ),
        ],
      ),
    ));
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
