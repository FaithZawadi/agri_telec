import 'package:agri_ai/utils/common/validator.dart';
import 'package:agri_ai/utils/routes/names.dart';
import 'package:agri_ai/utils/widgets/button.dart';
import 'package:agri_ai/utils/widgets/textfield_widget.dart';
import 'package:agri_ai/values/colors.dart';
import 'package:agri_ai/view/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController mail = TextEditingController();
  final TextEditingController pswpd = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: SafeArea(
          child: SingleChildScrollView(
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
              'Login into your account',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            const SizedBox(
              height: 15,
            ),
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
            btnFlatButtonWidget(
              title: "Login",
                fontSize: 17, fontWeight: FontWeight.w500, onPressed: () {
                  Get.offAllNamed(AppRoutes.loadscreen);
                }),
                const SizedBox(height: 15,),
                const Text('Forgot your password?', style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),

                const SizedBox(height: 27,),
               RichText(text:  TextSpan(
                children: [
                  const TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15

                      
                    )
                  ),
                  
                  WidgetSpan(child: GestureDetector(
                    onTap: () {
                     Get.offAllNamed(AppRoutes.signIn);
                    },
                    child: const Text('  Sign up', style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                    ),),
                  ))
                ]
               ))
          ],
        ),
      )),
    );
  }
}
