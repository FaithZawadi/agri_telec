import 'package:agri_ai/utils/common/validator.dart';
import 'package:agri_ai/utils/routes/names.dart';
import 'package:agri_ai/utils/widgets/button.dart';
import 'package:agri_ai/utils/widgets/textfield_widget.dart';
import 'package:agri_ai/values/colors.dart';
import 'package:agri_ai/view/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController fname = TextEditingController();
  final TextEditingController lname = TextEditingController();
  final TextEditingController mail = TextEditingController();
  final TextEditingController pswpd = TextEditingController();
  final TextEditingController cfmpwd = TextEditingController();
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Text(
                    'Welcome to teleagri',
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Sign up to your account',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(
                height: 15,
              ),
              inputTextEdit(
                validator: Validator.validateFname,
                  hintColor: Colors.white,
                  controller: fname,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'First name'),
              const SizedBox(
                height: 15,
              ),
              inputTextEdit(
                validator: Validator.validateLname,
                  hintColor: Colors.white,
                  controller: lname,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Last name'),
              inputTextEdit(
                validator: Validator.validateEmail,
                  hintColor: Colors.white,
                  controller: mail,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter you email'),
              const SizedBox(
                height: 10,
              ),
              inputTextEdit(
                validator: Validator.validatePassword,
                hintColor: Colors.white,
                controller: pswpd,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter you password',
              ),
               const SizedBox(
                height: 15,
              ),
              inputTextEdit(
                validator: Validator.validateCfmpwd,
                  hintColor: Colors.white,
                  controller: cfmpwd,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Confirm your password'),
              const SizedBox(
                height: 15,
              ),
              btnFlatButtonWidget(
                title: "Sign up",
                  fontSize: 17, fontWeight: FontWeight.w500, onPressed: () {
                    Get.offAllNamed(AppRoutes.loadscreen);
                  }),
              const SizedBox(
                height: 15,
              ),
             
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15)),
                WidgetSpan(
                    child: GestureDetector(
                  onTap: () {
                   Get.offAllNamed(AppRoutes.login);
                  },
                  child: const Text(
                    '  Sign in',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ))
              ]))
            ],
          ),
        ),
      )),
    );
  }
}
