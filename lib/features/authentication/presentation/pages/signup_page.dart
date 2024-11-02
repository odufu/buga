import 'package:buga/core/widgets/auth_elevated_button.dart';
import 'package:buga/core/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/drop_down_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  static route() => MaterialPageRoute(builder: (context) => const SignUpPage());

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController businessNameController = TextEditingController();
    TextEditingController businessAddressController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    String bussinessType = "wholesale";

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Container(
      //     decoration: BoxDecoration(
      //         color: Theme.of(context).colorScheme.primary,
      //         borderRadius: BorderRadius.circular(50)),
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text(
      //         "Sign Up",
      //         style: TextStyle(color: Theme.of(context).colorScheme.surface),
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HEADER
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Back Arrow
                    const Icon(Icons.arrow_back_ios),
                    // Title

                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onPrimary),
                        ),
                      ),
                    ),
                    //Empty
                    SizedBox()
                  ],
                ),
              ),
            ),
            //MESSAGE
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Let's Get you started",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 25),
                  ),
                  Image.asset(
                    width: 30,
                    "assets/images/bugawelcome1b.png",
                    color: Theme.of(context).colorScheme.onSecondary,
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "The Business Operating System for businesses &organizations of all sizes.",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),

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
                    const Text(
                      "What do you want to do today?",
                      style: TextStyle(fontSize: 20),
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
                      hintText: "Full Name",
                      labelText: "Please Enter Your Full Name",
                      controller: fullNameController,
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
                          Icons.email,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      hintText: "Active Email",
                      labelText: "Please Enter Your Active Email",
                      controller: emailController,
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
                          Icons.phone,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      hintText: "Phone Number",
                      labelText: "Please Enter Your Phone Number",
                      controller: phoneNumberController,
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
                          Icons.business,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      hintText: "Bussiness Name",
                      labelText: "Please Enter Your Business Name",
                      controller: businessNameController,
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
                          Icons.location_on,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      hintText: "Business Address",
                      labelText: "Please Enter Your Business Address",
                      controller: businessAddressController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownTextField(
                      hintText: 'Business Type',
                      labelText: 'Select your Business Type',
                      items: ['producer', 'wholesale', 'retail'],
                      selectedValue: bussinessType,
                      leadingIcon: Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(6)),
                        child: Icon(
                          Icons.type_specimen,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          bussinessType = value ?? "wholesale";
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthElevatedButton(
                        buttonText: "Sign Up",
                        onPressed: () {},
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
                        const Text("Already Have an account?"),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Impliment Navigation to Login Page");
                          },
                          child: Text(
                            "LOGIN",
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