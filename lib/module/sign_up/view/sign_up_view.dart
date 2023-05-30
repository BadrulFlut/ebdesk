import 'package:ebdeskgpt/module/sign_up/widget/text_field_initial_signup.dart';
import 'package:ebdeskgpt/module/sign_up/widget/text_field_signup.dart';
import 'package:ebdeskgpt/module/sign_up/widget/text_field_signup_password.dart';
import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_robot.dart';
import 'package:flutter/material.dart';
import 'package:ebdeskgpt/core.dart';
import '../controller/sign_up_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  Widget build(context, SignUpController controller) {
    controller.view = this;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: w,
      height: h,
      child: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: 75, bottom: 42, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 140,
              height: 39,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo_ebdesk.png"))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40.0,
                ),
                textRobot(
                    "Welcome to eBchat", 24, Colors.black, FontWeight.w500),
                const SizedBox(
                  height: 4.0,
                ),
                textRobot(
                    "please enter your data correctly or you can directly log in \nwith a Google",
                    12,
                    const Color(0xFFA2ACB5),
                    FontWeight.w400),
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textFieldSignup(
                    text: "Name",
                    controller: controller.nameController,
                    hintText: "Input"),
                const SizedBox(
                  height: 18.0,
                ),
                textFieldSignup(
                    text: "Email",
                    controller: controller.emailController,
                    hintText: "Input"),
                const SizedBox(
                  height: 18.0,
                ),
                textFieldSignupPassword(
                    text: "Password",
                    controller: controller.passwordController,
                    hintText: "Input"),
                const SizedBox(
                  height: 12.0,
                ),
                // DropdownButton(
                //     value: controller.locationSelected.isNotEmpty
                //         ? controller.locationSelected
                //         : "Select",
                //     items: controller.location
                //         .map((e) => DropdownMenuItem(
                //               child: textRobot(
                //                   e, 13, Colors.black, FontWeight.w400),
                //             ))
                //         .toList(),
                //     onChanged: controller.selectLocation),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textRobot("Position", 14, Colors.black, FontWeight.w500),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      width: w,
                      height: 42,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              width: 1, color: Colors.grey.withOpacity(0.2))),
                      child: textRobot(
                          "Select", 14, hintTextColor, FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                TextFieldInitialSignup(
                    title: "Phone Number",
                    inital: "+62",
                    controller: controller.numberController),
                const SizedBox(
                  height: 12.0,
                ),
                TextFieldInitialSignup(
                    title: "Telegram Username",
                    inital: "@",
                    controller: controller.telegramController),
                const SizedBox(
                  height: 18.0,
                ),
                InkWell(
                    onTap: () {},
                    child: textRobot(
                        "Forget password?", 12, primary, FontWeight.w400))
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                minimumSize: Size(w, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textRobot("Alredy have an account? ", 12,
                    const Color(0xFFA2ACB5), FontWeight.w400),
                InkWell(
                    onTap: () {},
                    child: textRobot("Sign Up", 12, primary, FontWeight.w400))
              ],
            ),
            const SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.grey.withOpacity(0.1))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  child: textRobot("OR", 12, Colors.black, FontWeight.w400),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: Colors.grey.withOpacity(0.1))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(6),
              onTap: () {},
              child: Container(
                width: w,
                height: 42,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: const Color(0xFFEAEAEA)),
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/icons/google.png")),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    textRobot("Continue with Google", 14, Colors.black,
                        FontWeight.w400)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {},
                    child: textRobot(
                        "Terms of use", 12, primary, FontWeight.w400)),
                Container(
                  height: 18,
                  margin: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: primary.withOpacity(0.1))),
                ),
                InkWell(
                    onTap: () {},
                    child: textRobot(
                        "Privacy policy", 12, primary, FontWeight.w400))
              ],
            )
          ],
        ),
      ),
    ));
  }

  @override
  State<SignUpView> createState() => SignUpController();
}
