import 'package:flutter/material.dart';
import 'package:get_you_monet/src/login/components/button_transparent_main.dart';
import 'package:get_you_monet/src/login/login_controller.dart';
import 'package:get_you_monet/src/util/value/constant_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController loginController;

  @override
  // ignore: must_call_super
  void initState() {
    loginController = LoginController(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ConstColors.colorBlack,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //const SizedBox(height: 8.0),
                const SizedBox(height: 60),
                Image.asset(
                  "images/logo.png",
                  width: 180,
                  height: 180,
                ),

                const SizedBox(height: 18.0),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        'Get yuor Money\nUnder Control',
                        style: TextStyle(
                          color: ConstColors.colorWhite,
                          fontSize: 38.0,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 18),
                      Text(
                        'Manage your expesenses.\n'
                        'Seamlessly ',
                        style: TextStyle(
                          color: ConstColors.colorStateGray,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 2),
                    ],
                  ),
                ),
                const SizedBox(height: 48.0),
                ButtonTransparent(
                  corText: ConstColors.colorWhite,
                  corButton: ConstColors.colorMajorelleBlue,
                  height: 48.0,
                  width: MediaQuery.of(context).size.width,
                  fontSize: 16.0,
                  marginRight: 18.0,
                  marginLeft: 18.0,
                  text: '         Sing Up with Email ID',
                  pathImage: "images/purp.png",
                  callback: () async {
                    await loginController.dailog();
                  },
                ),
                const SizedBox(height: 14.0),
                ButtonTransparent(
                  corText: ConstColors.colorBlack,
                  corButton: ConstColors.colorWhite,
                  height: 48.0,
                  width: MediaQuery.of(context).size.width,
                  fontSize: 16.0,
                  marginRight: 18.0,
                  marginLeft: 18.0,
                  text: '          Sing UP with Google',
                  pathImage: "images/google.png",
                  callback: () {
                    loginController.dailog();
                  },
                ),
                const SizedBox(height: 8.0),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                    left: 18.0,
                    right: 18.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: ConstColors.colorWhite,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      GestureDetector(
                        onTap: () {
                          loginController.dailog();
                        },
                        child: const Text(
                          ' Sign In ',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            inherit: true,
                            color: ConstColors.colorWhite,
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                //_myRow
              ],
            ),
          ),
        ),
      ),
    );
  }
}
