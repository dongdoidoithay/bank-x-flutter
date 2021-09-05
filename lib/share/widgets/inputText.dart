import 'package:flutter/material.dart';

/* class InputText extends StatelessWidget {
  String? labelTextVal;
  TextStyle? labelStyleVal;
  Icon? prefixIconVal;
  Color fillColorVal = Colors.white;

  const InputText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        fontFamily: "Roboto",
      ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: labelTextVal, // 'input_lab_search'.tr,
        labelStyle: labelStyleVal, //TextStyle(color: AppColors.in_placeholder),
        //icon
        prefixIcon: prefixIconVal,
        /*  Icon(
          Icons.search,
          color: AppColors.in_placeholder,
          size: 30,
        ), */
        fillColor: fillColorVal,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: AppColors.in_placeholder, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(color: AppColors.in_placeholder, width: 1),
        ),
        contentPadding: const EdgeInsets.only(
          top: 1.0,
          bottom: 1.0,
        ),
      ),
      //controller: controller.usernameController,
      onSaved: (value) {
        print("user" + value!);
      },
      validator: (value) {
        print('validate');
      },
    );
  }
}
 */