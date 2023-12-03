import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField(TextEditingController controller,String text,bool toHide,IconData iconData){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          )
        ),
      ),
    );
  }
  static CustomButton(VoidCallback voidCallback, String text){
    return ElevatedButton(onPressed: (){
      voidCallback();
    }, child: Text(text));
  }
}