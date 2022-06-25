import 'package:flutter/material.dart';
import 'package:flutter_loginui/constants.dart';

class AllreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function()? press;
  const AllreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Hesabınız yok mu?" : "Zaten hesabınız var mı?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Kaydol" : "Giriş Yap",
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
