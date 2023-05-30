import 'package:flutter/material.dart';
import 'package:ebdeskgpt/state_util.dart';
import '../view/sign_up_view.dart';

class SignUpController extends State<SignUpView> implements MvcController {
  static late SignUpController instance;
  late SignUpView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController telegramController = TextEditingController();

  List location = ["Indonesia", "Amerika", "India", "Malaysia", "Thailand"];

  String locationSelected = "";

  selectLocation(var e) {
    setState(() {
      locationSelected = e as String;
    });
  }
}
