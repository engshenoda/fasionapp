import 'package:fasionapp/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SighUpScreen extends StatelessWidget {
  const SighUpScreen({super.key});
  static const String signup = '/SignUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/freed.png"),
              CustomTextFormField(icon: Icons.person, title: "Enter Name"),
              CustomTextFormField(icon: Icons.email, title: "Enter Email"),
              CustomTextFormField(icon: Icons.phone, title: "Phone Number"),
              CustomTextFormField(
                icon: Icons.password,
                title: "Enter Password",
              ),
              CustomTextFormField(
                icon: Icons.password,
                title: "Enter Confirm Password",
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  backgroundColor: const Color.fromARGB(255, 190, 89, 82),
                ),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignInScreen');
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color.fromARGB(255, 190, 89, 82),
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
