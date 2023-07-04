import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mylogin/screens/home_page.dart';

import '../custom_widgets/back_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    height: 40,
                    width: 40,
                    child: CustomBackButton(),
                  ),

                  Center(
                    child: CircleAvatar(
                      backgroundColor: const Color(0xffCC04E6).withOpacity(0.1),
                      radius: 50.0,
                      child: LottieBuilder.asset(
                        "assets/animations/company.json",
                        height: 60.0,
                        width: 60.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text("Register",
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text("Enter your personal information",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.black26)),
                  const SizedBox(
                    height: 20,
                  ),

                  //  Register form is Starting here
                  Text(
                    "Username",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF6F7F9),
                        hintText: "Enter your name",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black26),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Set the border color
                            width: 2.0, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(50),
                          gapPadding: 8.0,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Email",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    style: Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF6F7F9),
                        hintText: "Enter your email",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black26),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Set the border color
                            width: 2.0, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(50),
                          gapPadding: 8.0,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: isVisible,
                    obscuringCharacter: "*",
                    style: (isVisible)
                        ? Theme.of(context).textTheme.bodyLarge
                        : Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                        suffixIcon: (isVisible)
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = false;
                                  });
                                },
                                icon: const Icon(
                                  CupertinoIcons.eye_slash,
                                  color: Colors.black26,
                                ))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = true;
                                  });
                                },
                                icon: const Icon(
                                  CupertinoIcons.eye,
                                  color: Colors.black26,
                                )),
                        filled: true,
                        fillColor: const Color(0xffF6F7F9),
                        hintText: "Enter your password",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black26),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Set the border color
                            width: 2.0, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(50),
                          gapPadding: 8.0,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Confirm Password",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: isVisible,
                    obscuringCharacter: "*",
                    style: (isVisible)
                        ? Theme.of(context).textTheme.bodyLarge
                        : Theme.of(context).textTheme.bodyMedium,
                    decoration: InputDecoration(
                        suffixIcon: (isVisible)
                            ? IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = false;
                                  });
                                },
                                icon: const Icon(
                                  CupertinoIcons.eye_slash,
                                  color: Colors.black26,
                                ))
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = true;
                                  });
                                },
                                icon: const Icon(
                                  CupertinoIcons.eye,
                                  color: Colors.black26,
                                )),
                        filled: true,
                        fillColor: const Color(0xffF6F7F9),
                        hintText: "Enter confirm password",
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.black26),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black12, // Set the border color
                            width: 2.0, // Set the border width
                          ),
                          borderRadius: BorderRadius.circular(50),
                          gapPadding: 8.0,
                        )),
                  ),

                  //  Register form is ending here
                  const SizedBox(
                    height: 20,
                  ),

                  //  Register Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 60.0),
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    child: Text("Register",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
