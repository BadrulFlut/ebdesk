import 'package:ebdeskgpt/module/home/widget/item_menu_home_rec1.dart';
import 'package:ebdeskgpt/module/home/widget/item_menu_home_rec2.dart';
import 'package:ebdeskgpt/module/home/widget/item_recently_chat_home.dart';
import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_dmsans.dart';
import 'package:ebdeskgpt/util/default_promps/text_robot.dart';
import 'package:flutter/material.dart';
import 'package:ebdeskgpt/core.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background.png"))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21, top: 53),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/human.png")),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          textDmSans(
                              "Hello, User", 18, Colors.white, FontWeight.w700),
                          const SizedBox(
                            height: 4.0,
                          ),
                          textDmSans("A great day to get better", 12,
                              Colors.white, FontWeight.w400)
                        ],
                      )
                    ],
                  ),
                  // controlller.notification.isNotEmpty
                  //     ? Badge(
                  //         child: IconButton(
                  //           onPressed: () {},
                  //           icon: const Icon(
                  //             Icons.notifications,
                  //             size: 24.0,
                  //           ),
                  //         ),
                  //       )
                  //     : IconButton(
                  //         onPressed: () {},
                  //         icon: const Icon(
                  //           Icons.notifications,
                  //           size: 24.0,
                  //         ),
                  //       ),
                  const Badge(
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 12),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    const SizedBox(
                      height: 22.0,
                    ),
                    Container(
                      width: w,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Color(0xFFFCFCFC),
                          border: Border.all(
                              width: 1, color: const Color(0xFFECF1EC)),
                          borderRadius: BorderRadius.circular(6)),
                      child: Column(
                        children: [
                          Container(
                            width: w,
                            padding: const EdgeInsets.only(left: 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: Color(0xFFECF1EC)),
                                borderRadius: BorderRadius.circular(6)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textRobot("6 Points", 18, primary,
                                        FontWeight.w700),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    textRobot("Your Points Balance", 12,
                                        Colors.black, FontWeight.w400),
                                    const SizedBox(
                                      height: 2.0,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        textRobot(
                                            "View Details",
                                            12,
                                            const Color(0xFF65816D),
                                            FontWeight.w400),
                                        Container(
                                          width: 66,
                                          height: 0.5,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xFF65816D))),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  width: 82,
                                  height: 92,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/coins.png"))),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: w,
                            height: 45,
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 12, bottom: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                textRobot("Reedem your Points", 14,
                                    Colors.black, FontWeight.w600),
                                Container(
                                  width: 16,
                                  height: 16,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFF65816D)),
                                  child: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 8.0,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          textRobot(
                              "Recent", 18, Colors.black, FontWeight.w500),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          ItemMenuHomeRec1(title: "Top Issues", button: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ItemMenuHomeRec1(title: "Top Person", button: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ItemMenuHomeRec1(title: "Top Issues", button: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ItemMenuHomeRec1(title: "Top Person", button: () {}),
                          const SizedBox(
                            width: 8.0,
                          ),
                          ItemMenuHomeRec1(title: "Top Issues", button: () {}),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 31),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ItemMenuHomeRec2(
                              icon: "assets/icons/menu.png",
                              title: "Dashboard"),
                          const SizedBox(
                            width: 24.0,
                          ),
                          ItemMenuHomeRec2(
                              icon: "assets/icons/code.png",
                              title: "Playground"),
                          const SizedBox(
                            width: 24.0,
                          ),
                          ItemMenuHomeRec2(
                              icon: "assets/icons/code.png", title: "Shared"),
                          const SizedBox(
                            width: 24.0,
                          ),
                          ItemMenuHomeRec2(
                              icon: "assets/icons/category.png", title: "More"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          textRobot("Recently Chat", 18, Colors.black,
                              FontWeight.w500),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ItemRecentlyChat(
                            text:
                                "What are some common mistakes to avoid to create landing page",
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          ItemRecentlyChat(
                              text:
                                  "How can i ensure thats my agency branding is consistent accross all ")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 88,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BottomMenu(icon: Icons.home, text: "Home", isClick: true),
                BottomMenu(
                    icon: Icons.calendar_today_rounded,
                    text: "Calender",
                    isClick: false),
                BottomMenu(
                    icon: Icons.message, text: "Message", isClick: false),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileView()));
                  },
                  child: BottomMenu(
                      icon: Icons.circle_sharp,
                      text: "Profile",
                      isClick: false),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF22A700),
          ),
          child: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/icons/ebdesk.png")),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}

class BottomMenu extends StatelessWidget {
  IconData icon;
  String text;
  bool isClick = false;
  BottomMenu({
    required this.icon,
    required this.text,
    required this.isClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 24.0,
          color: isClick ? primary : Colors.grey,
        ),
        const SizedBox(
          height: 4.0,
        ),
        textRobot(text, 13, isClick ? primary : Colors.grey, FontWeight.w500)
      ],
    );
  }
}
