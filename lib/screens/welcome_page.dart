import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mylogin/screens/login_page.dart';
import 'package:mylogin/screens/register_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            LottieBuilder.asset("assets/animations/ecommerce.json"),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                LottieBuilder.asset(
                  "assets/animations/store-logo.json",
                  height: 40,
                  width: 40,
                ),
                Text(
                  "Local",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w800),
                ),
                Text("Shop", style: Theme.of(context).textTheme.headlineSmall)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Everything you need is in one place",
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Find your daily neccessities at Brands. The world's largest fashion e-commerce has arrived in a mobile shop now!",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.black26)),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: Container(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
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
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegisterPage())),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                fixedSize: Size(MediaQuery.of(context).size.width, 60.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                side: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2.0,
                ),
              ),
              child: Text("Register",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).primaryColor,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
