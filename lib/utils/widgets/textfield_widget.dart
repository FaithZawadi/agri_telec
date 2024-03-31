import 'package:agri_ai/values/colors.dart';
import 'package:flutter/material.dart';

Widget inputTextEdit({
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  String? hintText,
  bool isPassword = false,
  double marginTop = 15,
  bool autofocus = false,
  Widget? preffix,
  Widget? suffix,
  Color? hintColor,
  String? Function(String?)? validator,
}) {
  return Container(
    height: 55,
    width: 310,
    margin: EdgeInsets.only(top: marginTop),
    decoration:  BoxDecoration(
        // color: AppColors.secondaryElement,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        border:  Border.all(
          color: Colors.white
        ),
       ),
        child: TextFormField(
          validator: validator,
          autofocus: autofocus,
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefix: preffix,
            suffix: suffix,
            hintText: hintText,
            contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            border: InputBorder.none
          ),
          style:  TextStyle(
            color: hintColor,
            fontFamily: "Avenir",
            fontWeight: FontWeight.w400,
            fontSize: 18
          ),
          maxLines: 1,
          autocorrect: false,
          obscureText: isPassword,
        ),
  );
}

Widget searchTextField({
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  String? hintText,
 
  double marginTop = 15,
  bool autofocus = false,
  Icon? suffixIcon,
  Icon? prefixIcon,
  Widget? preffix,
  Widget? suffix,
  Color? hintColor,
  String? Function(String?)? validator,
}) {
  return Container(
    height: 47,
    width: 310,
    margin: EdgeInsets.only(top: marginTop),
    decoration:  BoxDecoration(
      color: Colors.white,
        // color: AppColors.secondaryElement,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        border:  Border.all(
         color: Colors.white
        ),
       ),
        child: Align(
          alignment: Alignment.center,
          child: TextFormField(
            validator: validator,
            autofocus: autofocus,
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              prefix: preffix,
              suffix: suffix,
              hintText: hintText,
              contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              border: InputBorder.none
            ),
            style:  TextStyle(
              color: hintColor,
              fontFamily: "Avenir",
              fontWeight: FontWeight.w400,
              fontSize: 18
            ),
            maxLines: 1,
            autocorrect: false,
            
          ),
        ),
  );
}


