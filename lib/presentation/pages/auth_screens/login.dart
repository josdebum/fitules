import 'package:fitules/core/constants/color_constants.dart';
import 'package:fitules/core/utils/size_config/extensions.dart';
import 'package:fitules/core/utils/widget_extension.dart';
import 'package:fitules/presentation/pages/auth_screens/signup.dart';
import 'package:fitules/presentation/widgets/app_textfield.dart';
import 'package:fitules/presentation/widgets/appbar.dart';
import 'package:fitules/presentation/widgets/custom_app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        appBar: FituleAppBar(title: 'Sign In',),
        body: Padding(
            padding:   EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(children:  <Widget>[
              SizedBox(height: 70.h),
              const AppTextField(title: "Enter your Email").addHeight(20.h),
              const AppTextField(title: "Password").addHeight(80.h),
               AppButton(text: "Sign In",
                  buttonColor: kPrimary,
                  textColor: kWhite,
                  height: 50.h,
                  onTap: (){Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                  const SignUpScreen()));},
                  hasBorder: false).addHeight(40.h),
              Padding(padding:
              const  EdgeInsets.symmetric(horizontal:4), child:
              Row(children: <Widget>[
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child:   Container( color: kBlack, height: 1)),
                const  Padding(padding: EdgeInsets.symmetric(horizontal:10), child:
                Text("or sign in with")),
                Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child:   Container(color: kBlack, height: 1)),
              ])).addHeight(60.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[SvgPicture.asset("assets/svgs/google_icon.svg"),
                    SizedBox(width: 20.w),
                    SvgPicture.asset("assets/svgs/facebook.svg")]).addHeight(60.h),

              Row( mainAxisAlignment: MainAxisAlignment.center,
                  children:  const  <Widget>[Text("Don’t have an account? "),
                    Text("SIGN UP", style: TextStyle(color: kPrimary),)

                  ])
            ])
        ));
  }


}