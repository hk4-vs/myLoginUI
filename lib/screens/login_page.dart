import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mylogin/screens/forgot_password.dart';
import 'package:mylogin/screens/home_page.dart';
import 'package:mylogin/screens/register_page.dart';

import '../custom_widgets/back_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const CustomBackButton(),
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
              Text("Login", style: Theme.of(context).textTheme.headlineSmall),
              Text("Login to continue using the app",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black26)),
              const SizedBox(
                height: 20,
              ),

              //  Login form is Starting here
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

              //  Login form is ending here
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Flexible(child: Container()),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordPage()));
                        },
                        child: Text(
                          "Forgot Password?",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w800),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //  Login Button
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
                child: Text("Login",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),

              // Facebook, Google, and Apple icon button is here
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 20,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Flexible(
                        child: Divider(
                      thickness: 1.0,
                    )),
                    Text(
                      "  or login with  ",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black38),
                    ),
                    const Flexible(
                        child: Divider(
                      thickness: 1.0,
                    )),
                  ],
                ),
              ),
              Flexible(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/icons8-facebook-48.png",
                          height: 60,
                          width: 60,
                        )),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/icons8-google-48.png",
                          height: 60,
                          width: 60,
                        )),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {},
                        child: Image.asset(
                          "assets/images/icons8-apple-logo-64.png",
                          height: 60,
                          width: 60,
                        )),
                  )
                ],
              ),
              Flexible(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",
                      style: Theme.of(context).textTheme.bodyMedium),
                  TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage())),
                      child: Text("Register",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Theme.of(context).primaryColor)))
                ],
              )
            ]),
      ),
    );
  }
}
