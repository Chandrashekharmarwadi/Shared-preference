import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpref/Home%20Screen.dart';
import 'package:sharedpref/UiHelper%20Class.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField(emailController, "email", false, Icons.person),
          UiHelper.CustomTextField(passwordController, "password", true, Icons.password),
          UiHelper.CustomButton(() async {
            var prefs = await SharedPreferences.getInstance();
            prefs.setBool("isLogin", true);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

          }, "Save")

        ],
      ),
    );
  }
}
