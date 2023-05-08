import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/themes/theme_notifier.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/pages/auth_screens/signup2.dart';
import 'package:fitules/presentation/widgets/app_textfield.dart';
import 'package:fitules/presentation/widgets/appbar.dart';
import 'package:fitules/presentation/widgets/custom_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Provider.of<ThemeNotifier>(context).darkTheme
            ? backgroundBlack
            : backgroundColor,
        appBar: FituleAppBar(title: 'Sign Up',),
        body: SingleChildScrollView(child:Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(children: <Widget>[
              SizedBox(height: 20.h),
              const AppTextField(title: "Enter your Email").addHeight(20.h),
              const AppTextField(title: "Password").addHeight(20.h),
             const AppTextField(title: "Confirm Password").addHeight(20.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:4),
            child:RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(text: "By continuing, you agree to our ",
                  ),
                  TextSpan(text: 'terms of condition ', style: TextStyle(
                      decoration: TextDecoration.underline, color: kPrimary)),
                  TextSpan(text: 'and '),
                  TextSpan(text: "privacy policy.", style: TextStyle(
                      decoration: TextDecoration.underline, color: kPrimary))
                ],
              ),),
          ).addHeight(30.h),

               AppButton(text: "Sign Up",
                  buttonColor: kPrimary,
                  textColor: kWhite,
                  height: 50.h,
                  onTap: (){Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                  const SignUp2Screen()));},
                  hasBorder: false).addHeight(40.h),
              Padding(padding:
              const EdgeInsets.symmetric(horizontal: 4), child:
              Row(children: <Widget>[
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(color: kBlack, height: 1)),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10), child:
                Text("or sign in with")),
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(color: kBlack, height: 1)),
              ])).addHeight(60.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset("assets/svgs/google_icon.svg"),
                    SizedBox(width: 20.w),
                    SvgPicture.asset("assets/svgs/facebook.svg")
                  ]).addHeight(40.h),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[Text("Already have an account? "),
                    Text("SIGN IN", style: TextStyle(color: kPrimary),)

                  ])
            ])
        )));
  }
}

