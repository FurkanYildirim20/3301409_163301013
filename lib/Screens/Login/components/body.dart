import 'package:flutter/material.dart';
import 'package:flutter_loginui/Screens/Login/components/background.dart';
import 'package:flutter_loginui/Screens/Signup/signup_screen.dart';
import 'package:flutter_loginui/components/allready_have_account_check.dart';
import 'package:flutter_loginui/components/rounded_button.dart';
import 'package:flutter_loginui/components/rounded_input_field.dart';
import 'package:flutter_loginui/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Giriş Yap",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset("assets/icons/login.svg",
                height: size.height * 0.35),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Giriş Yap",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AllreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
