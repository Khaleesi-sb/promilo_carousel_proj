import 'package:flutter/material.dart';
import 'package:promilo_flutter_project/widgets/custom_text.dart';
import 'package:promilo_flutter_project/widgets/form_text_field.dart';
import 'package:promilo_flutter_project/widgets/image_button_list.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 40,
            ),
            const CustomText(
                text: "promilo", fontSize: 16, fontWeight: FontWeight.w700),
            const SizedBox(
              height: 40,
            ),
            const CustomText(
                text: "Hi, Welcome back!",
                fontSize: 18,
                fontWeight: FontWeight.w700),
            const FormTextField(),
            // const SizedBox(
            //   height: 16,
            // ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Divider(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: CustomText(
                      text: "or",
                    ),
                  ),
                  Expanded(child: Divider())
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CustomText(text: "Business User?", textColor: Colors.black54,),
                      InkWell(
                        onTap: (){},
                        child: const CustomText(
                          text: "Login Here",
                          textAlign: TextAlign.start,
                          textColor: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CustomText(text: "Don't have an account?", textColor: Colors.black54,),
                      InkWell(
                        onTap: (){},
                        child: const CustomText(
                          text: "Login Here",
                          textAlign: TextAlign.start,
                          textColor: Colors.blue,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const ImageButtonList(
              localAsset: true,
              imageList: [
                "assets/images/google.png",
                "assets/images/facebook.png",
                "assets/images/linkedin.png",
                "assets/images/instagram.png"
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 16),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  // text: 'Hello ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: 'By continuing, you agree to Prolimo${"'"}s ', style: TextStyle(
                      color: Colors.grey
                    )),
                    TextSpan(text: ' Terms of Use & Privacy Policy!', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
