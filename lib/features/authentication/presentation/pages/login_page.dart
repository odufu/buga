import 'package:buga/core/widgets/app_bar.dart';
import 'package:buga/core/widgets/auth_elevated_button.dart';
import 'package:buga/core/widgets/auth_text_field.dart';
import 'package:buga/features/authentication/presentation/pages/signup_page.dart';
import 'package:buga/features/authentication/presentation/pages/verification_code_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/drop_down_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static route() => MaterialPageRoute(builder: (context) => const LoginPage());

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailPhonController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: const AppBarWidget(
        title: "Sign In",
        backAllowed: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER

            //MESSAGE
            Image.asset("assets/images/bugawelcome2a.png"),

            //AUTH FIELDS

            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(.2)),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("Please, enter your details to Login")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Auth Text FIeld
                    AuthTextField(
                      leadingIcon: Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(6)),
                        child: Icon(
                          Icons.person,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      hintText: "Phone or Email",
                      labelText: "Please Enter Your Email or Phone Number",
                      controller: emailPhonController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextField(
                      leadingIcon: Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(6)),
                        child: Icon(
                          Icons.lock,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      hintText: "Password",
                      isObscure: true,
                      labelText: "Please Enter Your Password",
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    AuthElevatedButton(
                        buttonText: "Sign In",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      VerificationCodePage()));
                        },
                        isActive: true,
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        color: Theme.of(context).colorScheme.onSecondary),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't Have an account?"),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image:
                                  AssetImage("assets/images/footerdecor.png"))),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
