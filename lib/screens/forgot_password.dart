import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mylogin/custom_widgets/back_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const CustomBackButton(),
              LottieBuilder.asset(
                "assets/animations/forgot-password.json",
                alignment: Alignment.center,
              ),
              Flexible(flex: 2, child: Container()),
              Text("Forgot Password?",
                  style: Theme.of(context).textTheme.headlineSmall),
              Text(
                  "Don't worry! it accures. Please enter the email address linked with your account.",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black26)),
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
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 60.0),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                child: Text("Send Code",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              Flexible(child: Container())
            ]),
      ),
    );
  }
}
