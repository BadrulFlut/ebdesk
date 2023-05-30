import 'package:ebdeskgpt/module/login/widget/text_field_login.dart';
import 'package:ebdeskgpt/module/login/widget/text_field_login_password.dart';
import 'package:ebdeskgpt/util/color/colors.dart';
import 'package:ebdeskgpt/util/default_promps/text_robot.dart';
import 'package:flutter/material.dart';
import 'package:ebdeskgpt/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            width: w,
            height: h,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 161,
                    height: 32,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png")),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      textRobot("Welcome to eBchat", 24, Colors.black,
                          FontWeight.w500),
                      SizedBox(
                        height: 4.0,
                      ),
                      textRobot(
                          "please enter your data correctly or you can directly log in \nwith a Google",
                          12,
                          const Color(0xFFA2ACB5),
                          FontWeight.w400)
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textFieldLogin(
                            text: "Email",
                            controller: controller.emailController,
                            hintText: "Input"),
                        const SizedBox(
                          height: 20.0,
                        ),
                        textFieldLoginPassword(
                            text: "Password",
                            controller: controller.passwordController,
                            hintText: "Input"),
                        const SizedBox(
                          height: 16.0,
                        ),
                        InkWell(
                            onTap: () {},
                            child: textRobot("Forgot password?", 12, primary,
                                FontWeight.w400)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        minimumSize: const Size(double.infinity, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                      child:
                          textRobot("Login", 14, Colors.white, FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      textRobot("Don't have an acccount", 12,
                          const Color(0xFFA2ACB5), FontWeight.w400),
                      const SizedBox(
                        width: 4.0,
                      ),
                      InkWell(
                          onTap: () {},
                          child: textRobot(
                              "Sign Up", 12, primary, FontWeight.w400))
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey.withOpacity(0.1))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 11),
                        child:
                            textRobot("OR", 12, Colors.black, FontWeight.w400),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey.withOpacity(0.1))),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(6),
                      onTap: () {},
                      child: Container(
                        width: w,
                        height: 42,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(0xFFEAEAEA)),
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
                                    image:
                                        AssetImage("assets/icons/google.png")),
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
                  )
                ])));
  }

  @override
  State<LoginView> createState() => LoginController();
}
