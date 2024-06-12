import 'package:flutter/material.dart';

class UiHelper {
  static myTextField(
      String hintText,
      //bool obscureText obscureText,
      TextEditingController mController,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: TextField(
        controller: mController,
        //obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.go,
        decoration: InputDecoration(
            hintText: hintText,
            //suffixIcon: Icon(Icons.mail,),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true),
      ),
    );
  }
  static myButton(String text, ontap) {
    return GestureDetector(
      onTap: ontap,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          )),
    );
  }
}